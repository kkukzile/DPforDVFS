/**
 * Capture the time/energy behavior of a system command.
 *
 * @author Connor Imes
 * @date 2016-03-02
 */
#define _GNU_SOURCE
#include <errno.h>
#include <getopt.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include "energymon-default.h"
#include "energymon-time-util.h"

#define CMD_MAX_LEN 8192

static const char short_options[] = "+h";
static const struct option long_options[] = {
  {"help",      no_argument,       NULL, 'h'},
  {0, 0, 0, 0}
};

static void print_usage(int exit_code) {
  fprintf(exit_code ? stderr : stdout,
          "Usage: energymon-cmd-profile [OPTION]... COMMAND [ARG...]\n"
          "Options:\n"
          "  -h, --help               Print this message and exit\n");
  exit(exit_code);
}

int main(int argc, char** argv) {
  char cmd[CMD_MAX_LEN] = { 0 };
  energymon em;
  uint64_t time_start_ns;
  uint64_t time_end_ns;
  uint64_t time_total_ns;
  uint64_t energy_start_uj;
  uint64_t energy_end_uj;
  uint64_t energy_total_uj;
  double watts;
  int cmd_ret;
  int i;
  int written = 0;
  int c;
  while ((c = getopt_long(argc, argv, short_options, long_options, NULL)) != -1) {
    switch (c) {
      case 'h':
        print_usage(0);
        break;
      case '?':
      default:
        print_usage(1);
        break;
    }
  }
  if (optind >= argc) {
    print_usage(1);
  }

  for (i = optind; i < argc; i++) {
    written += snprintf(cmd + written, CMD_MAX_LEN - written, "%s%s",
                        argv[i], (i == argc - 1 ? "" : " "));
    if (written >= CMD_MAX_LEN) {
      fprintf(stderr, "Command too long");
      exit(1);
    }
  }

  // initialize
  if (energymon_get_default(&em)) {
    perror("energymon_get_default");
    exit(1);
  }
  if (em.finit(&em)) {
    perror("energymon:finit");
    exit(1);
  }

  // get start time/energy
  errno = 0;
  energy_start_uj = em.fread(&em);
  if (!energy_start_uj && errno) {
    perror("energymon:fread");
    em.ffinish(&em);
    exit(1);
  }
  time_start_ns = energymon_gettime_ns();
  
  // execute
  printf("Executing: %s\n", cmd);
  cmd_ret = system(cmd);
  
  // get end time/energy
  errno = 0;
  energy_end_uj = em.fread(&em);
  if (!energy_end_uj && errno) {
    perror("energymon:fread");
    em.ffinish(&em);
    exit(1);
  }
  time_end_ns = energymon_gettime_ns();

  if (cmd_ret) {
    fprintf(stderr, "Warning: command exited with return code %d:\n%s\n",
            cmd_ret, cmd);
  }

  time_total_ns = time_end_ns - time_start_ns;
  energy_total_uj = energy_end_uj - energy_start_uj;
  watts = energy_total_uj * 1000.0 / time_total_ns;
  printf("Time (ns): %"PRIu64"\n", time_total_ns);
  printf("Energy (uJ): %"PRIu64"\n", energy_total_uj);
  printf("Power (W): %f\n", watts);

  // cleanup
  if (em.ffinish(&em)) {
    perror("energymon:ffinish");
  }

  // return the exit code of the command
  return cmd_ret;
}
