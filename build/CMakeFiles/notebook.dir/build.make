# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/backboxlopm/Documents/newWORK/NoteBook

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/backboxlopm/Documents/newWORK/NoteBook/build

# Include any dependencies generated for this target.
include CMakeFiles/notebook.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/notebook.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/notebook.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/notebook.dir/flags.make

CMakeFiles/notebook.dir/src/main.cpp.o: CMakeFiles/notebook.dir/flags.make
CMakeFiles/notebook.dir/src/main.cpp.o: /home/backboxlopm/Documents/newWORK/NoteBook/src/main.cpp
CMakeFiles/notebook.dir/src/main.cpp.o: CMakeFiles/notebook.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/backboxlopm/Documents/newWORK/NoteBook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/notebook.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/notebook.dir/src/main.cpp.o -MF CMakeFiles/notebook.dir/src/main.cpp.o.d -o CMakeFiles/notebook.dir/src/main.cpp.o -c /home/backboxlopm/Documents/newWORK/NoteBook/src/main.cpp

CMakeFiles/notebook.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/notebook.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/backboxlopm/Documents/newWORK/NoteBook/src/main.cpp > CMakeFiles/notebook.dir/src/main.cpp.i

CMakeFiles/notebook.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/notebook.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/backboxlopm/Documents/newWORK/NoteBook/src/main.cpp -o CMakeFiles/notebook.dir/src/main.cpp.s

CMakeFiles/notebook.dir/src/viewing.cpp.o: CMakeFiles/notebook.dir/flags.make
CMakeFiles/notebook.dir/src/viewing.cpp.o: /home/backboxlopm/Documents/newWORK/NoteBook/src/viewing.cpp
CMakeFiles/notebook.dir/src/viewing.cpp.o: CMakeFiles/notebook.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/backboxlopm/Documents/newWORK/NoteBook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/notebook.dir/src/viewing.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/notebook.dir/src/viewing.cpp.o -MF CMakeFiles/notebook.dir/src/viewing.cpp.o.d -o CMakeFiles/notebook.dir/src/viewing.cpp.o -c /home/backboxlopm/Documents/newWORK/NoteBook/src/viewing.cpp

CMakeFiles/notebook.dir/src/viewing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/notebook.dir/src/viewing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/backboxlopm/Documents/newWORK/NoteBook/src/viewing.cpp > CMakeFiles/notebook.dir/src/viewing.cpp.i

CMakeFiles/notebook.dir/src/viewing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/notebook.dir/src/viewing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/backboxlopm/Documents/newWORK/NoteBook/src/viewing.cpp -o CMakeFiles/notebook.dir/src/viewing.cpp.s

# Object files for target notebook
notebook_OBJECTS = \
"CMakeFiles/notebook.dir/src/main.cpp.o" \
"CMakeFiles/notebook.dir/src/viewing.cpp.o"

# External object files for target notebook
notebook_EXTERNAL_OBJECTS =

notebook: CMakeFiles/notebook.dir/src/main.cpp.o
notebook: CMakeFiles/notebook.dir/src/viewing.cpp.o
notebook: CMakeFiles/notebook.dir/build.make
notebook: /usr/lib/x86_64-linux-gnu/libcurses.so
notebook: /usr/lib/x86_64-linux-gnu/libform.so
notebook: CMakeFiles/notebook.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/backboxlopm/Documents/newWORK/NoteBook/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable notebook"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/notebook.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/notebook.dir/build: notebook
.PHONY : CMakeFiles/notebook.dir/build

CMakeFiles/notebook.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/notebook.dir/cmake_clean.cmake
.PHONY : CMakeFiles/notebook.dir/clean

CMakeFiles/notebook.dir/depend:
	cd /home/backboxlopm/Documents/newWORK/NoteBook/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/backboxlopm/Documents/newWORK/NoteBook /home/backboxlopm/Documents/newWORK/NoteBook /home/backboxlopm/Documents/newWORK/NoteBook/build /home/backboxlopm/Documents/newWORK/NoteBook/build /home/backboxlopm/Documents/newWORK/NoteBook/build/CMakeFiles/notebook.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/notebook.dir/depend

