# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\CLionProjects\Endians

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\CLionProjects\Endians\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Endians.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Endians.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Endians.dir/flags.make

CMakeFiles/Endians.dir/main.cpp.obj: CMakeFiles/Endians.dir/flags.make
CMakeFiles/Endians.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CLionProjects\Endians\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Endians.dir/main.cpp.obj"
	C:\tols\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Endians.dir\main.cpp.obj -c C:\CLionProjects\Endians\main.cpp

CMakeFiles/Endians.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Endians.dir/main.cpp.i"
	C:\tols\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CLionProjects\Endians\main.cpp > CMakeFiles\Endians.dir\main.cpp.i

CMakeFiles/Endians.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Endians.dir/main.cpp.s"
	C:\tols\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CLionProjects\Endians\main.cpp -o CMakeFiles\Endians.dir\main.cpp.s

# Object files for target Endians
Endians_OBJECTS = \
"CMakeFiles/Endians.dir/main.cpp.obj"

# External object files for target Endians
Endians_EXTERNAL_OBJECTS =

Endians.exe: CMakeFiles/Endians.dir/main.cpp.obj
Endians.exe: CMakeFiles/Endians.dir/build.make
Endians.exe: CMakeFiles/Endians.dir/linklibs.rsp
Endians.exe: CMakeFiles/Endians.dir/objects1.rsp
Endians.exe: CMakeFiles/Endians.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CLionProjects\Endians\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Endians.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Endians.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Endians.dir/build: Endians.exe
.PHONY : CMakeFiles/Endians.dir/build

CMakeFiles/Endians.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Endians.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Endians.dir/clean

CMakeFiles/Endians.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CLionProjects\Endians C:\CLionProjects\Endians C:\CLionProjects\Endians\cmake-build-debug C:\CLionProjects\Endians\cmake-build-debug C:\CLionProjects\Endians\cmake-build-debug\CMakeFiles\Endians.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Endians.dir/depend

