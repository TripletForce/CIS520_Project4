# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/kael/Documents/GitHub/CIS520_Project4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kael/Documents/GitHub/CIS520_Project4/Build

# Include any dependencies generated for this target.
include CMakeFiles/pt0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pt0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pt0.dir/flags.make

CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.o: CMakeFiles/pt0.dir/flags.make
CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.o: ../src/hw4-pt0-thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kael/Documents/GitHub/CIS520_Project4/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.o   -c /home/kael/Documents/GitHub/CIS520_Project4/src/hw4-pt0-thread.c

CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kael/Documents/GitHub/CIS520_Project4/src/hw4-pt0-thread.c > CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.i

CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kael/Documents/GitHub/CIS520_Project4/src/hw4-pt0-thread.c -o CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.s

# Object files for target pt0
pt0_OBJECTS = \
"CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.o"

# External object files for target pt0
pt0_EXTERNAL_OBJECTS =

pt0: CMakeFiles/pt0.dir/src/hw4-pt0-thread.c.o
pt0: CMakeFiles/pt0.dir/build.make
pt0: CMakeFiles/pt0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kael/Documents/GitHub/CIS520_Project4/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pt0"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pt0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pt0.dir/build: pt0

.PHONY : CMakeFiles/pt0.dir/build

CMakeFiles/pt0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pt0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pt0.dir/clean

CMakeFiles/pt0.dir/depend:
	cd /home/kael/Documents/GitHub/CIS520_Project4/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kael/Documents/GitHub/CIS520_Project4 /home/kael/Documents/GitHub/CIS520_Project4 /home/kael/Documents/GitHub/CIS520_Project4/Build /home/kael/Documents/GitHub/CIS520_Project4/Build /home/kael/Documents/GitHub/CIS520_Project4/Build/CMakeFiles/pt0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pt0.dir/depend

