# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/software/software/CMake/3.23.1-GCCcore-11.3.0/bin/cmake

# The command to remove a file.
RM = /opt/software/software/CMake/3.23.1-GCCcore-11.3.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /homes/kael/cis520/hw4/CIS520_Project4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /homes/kael/cis520/hw4/CIS520_Project4/Build

# Include any dependencies generated for this target.
include CMakeFiles/hw4_thread.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hw4_thread.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hw4_thread.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw4_thread.dir/flags.make

CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o: CMakeFiles/hw4_thread.dir/flags.make
CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o: ../src/Thread/hw4-pt0-thread.c
CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o: CMakeFiles/hw4_thread.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/homes/kael/cis520/hw4/CIS520_Project4/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o"
	/opt/software/software/GCCcore/11.3.0/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o -MF CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o.d -o CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o -c /homes/kael/cis520/hw4/CIS520_Project4/src/Thread/hw4-pt0-thread.c

CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.i"
	/opt/software/software/GCCcore/11.3.0/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /homes/kael/cis520/hw4/CIS520_Project4/src/Thread/hw4-pt0-thread.c > CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.i

CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.s"
	/opt/software/software/GCCcore/11.3.0/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /homes/kael/cis520/hw4/CIS520_Project4/src/Thread/hw4-pt0-thread.c -o CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.s

# Object files for target hw4_thread
hw4_thread_OBJECTS = \
"CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o"

# External object files for target hw4_thread
hw4_thread_EXTERNAL_OBJECTS =

hw4_thread: CMakeFiles/hw4_thread.dir/src/Thread/hw4-pt0-thread.c.o
hw4_thread: CMakeFiles/hw4_thread.dir/build.make
hw4_thread: CMakeFiles/hw4_thread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/homes/kael/cis520/hw4/CIS520_Project4/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hw4_thread"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw4_thread.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw4_thread.dir/build: hw4_thread
.PHONY : CMakeFiles/hw4_thread.dir/build

CMakeFiles/hw4_thread.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw4_thread.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw4_thread.dir/clean

CMakeFiles/hw4_thread.dir/depend:
	cd /homes/kael/cis520/hw4/CIS520_Project4/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /homes/kael/cis520/hw4/CIS520_Project4 /homes/kael/cis520/hw4/CIS520_Project4 /homes/kael/cis520/hw4/CIS520_Project4/Build /homes/kael/cis520/hw4/CIS520_Project4/Build /homes/kael/cis520/hw4/CIS520_Project4/Build/CMakeFiles/hw4_thread.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw4_thread.dir/depend
