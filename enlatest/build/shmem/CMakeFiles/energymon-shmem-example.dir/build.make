# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/odroid/energymon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/odroid/energymon/build

# Include any dependencies generated for this target.
include shmem/CMakeFiles/energymon-shmem-example.dir/depend.make

# Include the progress variables for this target.
include shmem/CMakeFiles/energymon-shmem-example.dir/progress.make

# Include the compile flags for this target's objects.
include shmem/CMakeFiles/energymon-shmem-example.dir/flags.make

shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o: shmem/CMakeFiles/energymon-shmem-example.dir/flags.make
shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o: ../shmem/example/energymon-shmem-example.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o"
	cd /home/odroid/energymon/build/shmem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o   -c /home/odroid/energymon/shmem/example/energymon-shmem-example.c

shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.i"
	cd /home/odroid/energymon/build/shmem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/odroid/energymon/shmem/example/energymon-shmem-example.c > CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.i

shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.s"
	cd /home/odroid/energymon/build/shmem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/odroid/energymon/shmem/example/energymon-shmem-example.c -o CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.s

shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.requires:

.PHONY : shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.requires

shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.provides: shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.requires
	$(MAKE) -f shmem/CMakeFiles/energymon-shmem-example.dir/build.make shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.provides.build
.PHONY : shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.provides

shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.provides.build: shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o


# Object files for target energymon-shmem-example
energymon__shmem__example_OBJECTS = \
"CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o"

# External object files for target energymon-shmem-example
energymon__shmem__example_EXTERNAL_OBJECTS =

shmem/energymon-shmem-example: shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o
shmem/energymon-shmem-example: shmem/CMakeFiles/energymon-shmem-example.dir/build.make
shmem/energymon-shmem-example: dummy/libenergymon-default.a
shmem/energymon-shmem-example: shmem/CMakeFiles/energymon-shmem-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable energymon-shmem-example"
	cd /home/odroid/energymon/build/shmem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/energymon-shmem-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shmem/CMakeFiles/energymon-shmem-example.dir/build: shmem/energymon-shmem-example

.PHONY : shmem/CMakeFiles/energymon-shmem-example.dir/build

shmem/CMakeFiles/energymon-shmem-example.dir/requires: shmem/CMakeFiles/energymon-shmem-example.dir/example/energymon-shmem-example.c.o.requires

.PHONY : shmem/CMakeFiles/energymon-shmem-example.dir/requires

shmem/CMakeFiles/energymon-shmem-example.dir/clean:
	cd /home/odroid/energymon/build/shmem && $(CMAKE_COMMAND) -P CMakeFiles/energymon-shmem-example.dir/cmake_clean.cmake
.PHONY : shmem/CMakeFiles/energymon-shmem-example.dir/clean

shmem/CMakeFiles/energymon-shmem-example.dir/depend:
	cd /home/odroid/energymon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/energymon /home/odroid/energymon/shmem /home/odroid/energymon/build /home/odroid/energymon/build/shmem /home/odroid/energymon/build/shmem/CMakeFiles/energymon-shmem-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shmem/CMakeFiles/energymon-shmem-example.dir/depend

