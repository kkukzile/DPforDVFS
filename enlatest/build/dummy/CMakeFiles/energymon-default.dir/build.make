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
include dummy/CMakeFiles/energymon-default.dir/depend.make

# Include the progress variables for this target.
include dummy/CMakeFiles/energymon-default.dir/progress.make

# Include the compile flags for this target's objects.
include dummy/CMakeFiles/energymon-default.dir/flags.make

dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o: dummy/CMakeFiles/energymon-default.dir/flags.make
dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o: ../dummy/energymon-dummy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o"
	cd /home/odroid/energymon/build/dummy && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/energymon-default.dir/energymon-dummy.c.o   -c /home/odroid/energymon/dummy/energymon-dummy.c

dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/energymon-default.dir/energymon-dummy.c.i"
	cd /home/odroid/energymon/build/dummy && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/odroid/energymon/dummy/energymon-dummy.c > CMakeFiles/energymon-default.dir/energymon-dummy.c.i

dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/energymon-default.dir/energymon-dummy.c.s"
	cd /home/odroid/energymon/build/dummy && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/odroid/energymon/dummy/energymon-dummy.c -o CMakeFiles/energymon-default.dir/energymon-dummy.c.s

dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.requires:

.PHONY : dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.requires

dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.provides: dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.requires
	$(MAKE) -f dummy/CMakeFiles/energymon-default.dir/build.make dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.provides.build
.PHONY : dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.provides

dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.provides.build: dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o


dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o: dummy/CMakeFiles/energymon-default.dir/flags.make
dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o: ../common/energymon-util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o"
	cd /home/odroid/energymon/build/dummy && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o   -c /home/odroid/energymon/common/energymon-util.c

dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/energymon-default.dir/__/common/energymon-util.c.i"
	cd /home/odroid/energymon/build/dummy && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/odroid/energymon/common/energymon-util.c > CMakeFiles/energymon-default.dir/__/common/energymon-util.c.i

dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/energymon-default.dir/__/common/energymon-util.c.s"
	cd /home/odroid/energymon/build/dummy && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/odroid/energymon/common/energymon-util.c -o CMakeFiles/energymon-default.dir/__/common/energymon-util.c.s

dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.requires:

.PHONY : dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.requires

dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.provides: dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.requires
	$(MAKE) -f dummy/CMakeFiles/energymon-default.dir/build.make dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.provides.build
.PHONY : dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.provides

dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.provides.build: dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o


# Object files for target energymon-default
energymon__default_OBJECTS = \
"CMakeFiles/energymon-default.dir/energymon-dummy.c.o" \
"CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o"

# External object files for target energymon-default
energymon__default_EXTERNAL_OBJECTS =

dummy/libenergymon-default.a: dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o
dummy/libenergymon-default.a: dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o
dummy/libenergymon-default.a: dummy/CMakeFiles/energymon-default.dir/build.make
dummy/libenergymon-default.a: dummy/CMakeFiles/energymon-default.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/energymon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libenergymon-default.a"
	cd /home/odroid/energymon/build/dummy && $(CMAKE_COMMAND) -P CMakeFiles/energymon-default.dir/cmake_clean_target.cmake
	cd /home/odroid/energymon/build/dummy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/energymon-default.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dummy/CMakeFiles/energymon-default.dir/build: dummy/libenergymon-default.a

.PHONY : dummy/CMakeFiles/energymon-default.dir/build

dummy/CMakeFiles/energymon-default.dir/requires: dummy/CMakeFiles/energymon-default.dir/energymon-dummy.c.o.requires
dummy/CMakeFiles/energymon-default.dir/requires: dummy/CMakeFiles/energymon-default.dir/__/common/energymon-util.c.o.requires

.PHONY : dummy/CMakeFiles/energymon-default.dir/requires

dummy/CMakeFiles/energymon-default.dir/clean:
	cd /home/odroid/energymon/build/dummy && $(CMAKE_COMMAND) -P CMakeFiles/energymon-default.dir/cmake_clean.cmake
.PHONY : dummy/CMakeFiles/energymon-default.dir/clean

dummy/CMakeFiles/energymon-default.dir/depend:
	cd /home/odroid/energymon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/energymon /home/odroid/energymon/dummy /home/odroid/energymon/build /home/odroid/energymon/build/dummy /home/odroid/energymon/build/dummy/CMakeFiles/energymon-default.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dummy/CMakeFiles/energymon-default.dir/depend

