# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/fuck4life/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.5233.144/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/fuck4life/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.5233.144/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fuck4life/CLionProjects/finalodevison

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fuck4life/CLionProjects/finalodevison/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/finalodevison.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/finalodevison.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/finalodevison.dir/flags.make

CMakeFiles/finalodevison.dir/main.c.o: CMakeFiles/finalodevison.dir/flags.make
CMakeFiles/finalodevison.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fuck4life/CLionProjects/finalodevison/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/finalodevison.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/finalodevison.dir/main.c.o   -c /home/fuck4life/CLionProjects/finalodevison/main.c

CMakeFiles/finalodevison.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/finalodevison.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fuck4life/CLionProjects/finalodevison/main.c > CMakeFiles/finalodevison.dir/main.c.i

CMakeFiles/finalodevison.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/finalodevison.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fuck4life/CLionProjects/finalodevison/main.c -o CMakeFiles/finalodevison.dir/main.c.s

# Object files for target finalodevison
finalodevison_OBJECTS = \
"CMakeFiles/finalodevison.dir/main.c.o"

# External object files for target finalodevison
finalodevison_EXTERNAL_OBJECTS =

finalodevison: CMakeFiles/finalodevison.dir/main.c.o
finalodevison: CMakeFiles/finalodevison.dir/build.make
finalodevison: CMakeFiles/finalodevison.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fuck4life/CLionProjects/finalodevison/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable finalodevison"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/finalodevison.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/finalodevison.dir/build: finalodevison

.PHONY : CMakeFiles/finalodevison.dir/build

CMakeFiles/finalodevison.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/finalodevison.dir/cmake_clean.cmake
.PHONY : CMakeFiles/finalodevison.dir/clean

CMakeFiles/finalodevison.dir/depend:
	cd /home/fuck4life/CLionProjects/finalodevison/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fuck4life/CLionProjects/finalodevison /home/fuck4life/CLionProjects/finalodevison /home/fuck4life/CLionProjects/finalodevison/cmake-build-debug /home/fuck4life/CLionProjects/finalodevison/cmake-build-debug /home/fuck4life/CLionProjects/finalodevison/cmake-build-debug/CMakeFiles/finalodevison.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/finalodevison.dir/depend
