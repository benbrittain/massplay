# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ben/workspace/massplay/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/workspace/massplay/server

# Include any dependencies generated for this target.
include CMakeFiles/vbam.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vbam.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vbam.dir/flags.make

CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o: src/sdl/debugger.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/debugger.cpp

CMakeFiles/vbam.dir/src/sdl/debugger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/debugger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/debugger.cpp > CMakeFiles/vbam.dir/src/sdl/debugger.cpp.i

CMakeFiles/vbam.dir/src/sdl/debugger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/debugger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/debugger.cpp -o CMakeFiles/vbam.dir/src/sdl/debugger.cpp.s

CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o

CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o: src/sdl/SDL.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/SDL.cpp

CMakeFiles/vbam.dir/src/sdl/SDL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/SDL.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/SDL.cpp > CMakeFiles/vbam.dir/src/sdl/SDL.cpp.i

CMakeFiles/vbam.dir/src/sdl/SDL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/SDL.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/SDL.cpp -o CMakeFiles/vbam.dir/src/sdl/SDL.cpp.s

CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o

CMakeFiles/vbam.dir/src/sdl/filters.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/filters.cpp.o: src/sdl/filters.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/filters.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/filters.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/filters.cpp

CMakeFiles/vbam.dir/src/sdl/filters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/filters.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/filters.cpp > CMakeFiles/vbam.dir/src/sdl/filters.cpp.i

CMakeFiles/vbam.dir/src/sdl/filters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/filters.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/filters.cpp -o CMakeFiles/vbam.dir/src/sdl/filters.cpp.s

CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/filters.cpp.o

CMakeFiles/vbam.dir/src/sdl/text.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/text.cpp.o: src/sdl/text.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/text.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/text.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/text.cpp

CMakeFiles/vbam.dir/src/sdl/text.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/text.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/text.cpp > CMakeFiles/vbam.dir/src/sdl/text.cpp.i

CMakeFiles/vbam.dir/src/sdl/text.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/text.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/text.cpp -o CMakeFiles/vbam.dir/src/sdl/text.cpp.s

CMakeFiles/vbam.dir/src/sdl/text.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/text.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/text.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/text.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/text.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/text.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/text.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/text.cpp.o

CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o: src/sdl/inputSDL.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/inputSDL.cpp

CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/inputSDL.cpp > CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.i

CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/inputSDL.cpp -o CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.s

CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o

CMakeFiles/vbam.dir/src/sdl/expr.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/expr.cpp.o: src/sdl/expr.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/expr.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/expr.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/expr.cpp

CMakeFiles/vbam.dir/src/sdl/expr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/expr.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/expr.cpp > CMakeFiles/vbam.dir/src/sdl/expr.cpp.i

CMakeFiles/vbam.dir/src/sdl/expr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/expr.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/expr.cpp -o CMakeFiles/vbam.dir/src/sdl/expr.cpp.s

CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/expr.cpp.o

CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o: src/sdl/exprNode.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/exprNode.cpp

CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/exprNode.cpp > CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.i

CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/exprNode.cpp -o CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.s

CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o

CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o: CMakeFiles/vbam.dir/flags.make
CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o: src/sdl/expr-lex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ben/workspace/massplay/server/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o -c /home/ben/workspace/massplay/server/src/sdl/expr-lex.cpp

CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ben/workspace/massplay/server/src/sdl/expr-lex.cpp > CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.i

CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ben/workspace/massplay/server/src/sdl/expr-lex.cpp -o CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.s

CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.requires:
.PHONY : CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.requires

CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.provides: CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.requires
	$(MAKE) -f CMakeFiles/vbam.dir/build.make CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.provides.build
.PHONY : CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.provides

CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.provides.build: CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o

# Object files for target vbam
vbam_OBJECTS = \
"CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/filters.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/text.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/expr.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o" \
"CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o"

# External object files for target vbam
vbam_EXTERNAL_OBJECTS =

vbam: CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/filters.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/text.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/expr.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o
vbam: CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o
vbam: CMakeFiles/vbam.dir/build.make
vbam: libvbamcore.a
vbam: libfex.a
vbam: /usr/lib64/libSDL.so
vbam: /usr/lib64/libGLU.so
vbam: /usr/lib64/libGL.so
vbam: /usr/lib64/libSM.so
vbam: /usr/lib64/libICE.so
vbam: /usr/lib64/libX11.so
vbam: /usr/lib64/libXext.so
vbam: /usr/lib64/libz.so
vbam: /usr/lib64/libpng.so
vbam: CMakeFiles/vbam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable vbam"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vbam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vbam.dir/build: vbam
.PHONY : CMakeFiles/vbam.dir/build

CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/debugger.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/SDL.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/filters.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/text.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/inputSDL.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/expr.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/exprNode.cpp.o.requires
CMakeFiles/vbam.dir/requires: CMakeFiles/vbam.dir/src/sdl/expr-lex.cpp.o.requires
.PHONY : CMakeFiles/vbam.dir/requires

CMakeFiles/vbam.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vbam.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vbam.dir/clean

CMakeFiles/vbam.dir/depend:
	cd /home/ben/workspace/massplay/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/workspace/massplay/server /home/ben/workspace/massplay/server /home/ben/workspace/massplay/server /home/ben/workspace/massplay/server /home/ben/workspace/massplay/server/CMakeFiles/vbam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vbam.dir/depend

