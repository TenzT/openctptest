# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tandezhi/kungfu/core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tandezhi/kungfu/core

# Include any dependencies generated for this target.
include deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/progress.make

# Include the compile flags for this target's objects.
include deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/flags.make

deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.o: deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/flags.make
deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.o: deps/SQLiteCpp-2.3.0/sqlite3/sqlite3.c
deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.o: deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.o"
	cd /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.o -MF CMakeFiles/sqlite3.dir/sqlite3.c.o.d -o CMakeFiles/sqlite3.dir/sqlite3.c.o -c /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3/sqlite3.c

deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/sqlite3.dir/sqlite3.c.i"
	cd /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3/sqlite3.c > CMakeFiles/sqlite3.dir/sqlite3.c.i

deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/sqlite3.dir/sqlite3.c.s"
	cd /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3/sqlite3.c -o CMakeFiles/sqlite3.dir/sqlite3.c.s

# Object files for target sqlite3
sqlite3_OBJECTS = \
"CMakeFiles/sqlite3.dir/sqlite3.c.o"

# External object files for target sqlite3
sqlite3_EXTERNAL_OBJECTS =

deps/SQLiteCpp-2.3.0/sqlite3/libsqlite3.a: deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/sqlite3.c.o
deps/SQLiteCpp-2.3.0/sqlite3/libsqlite3.a: deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/build.make
deps/SQLiteCpp-2.3.0/sqlite3/libsqlite3.a: deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libsqlite3.a"
	cd /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 && $(CMAKE_COMMAND) -P CMakeFiles/sqlite3.dir/cmake_clean_target.cmake
	cd /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sqlite3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/build: deps/SQLiteCpp-2.3.0/sqlite3/libsqlite3.a
.PHONY : deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/build

deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/clean:
	cd /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 && $(CMAKE_COMMAND) -P CMakeFiles/sqlite3.dir/cmake_clean.cmake
.PHONY : deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/clean

deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/depend:
	cd /Users/tandezhi/kungfu/core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tandezhi/kungfu/core /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 /Users/tandezhi/kungfu/core /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3 /Users/tandezhi/kungfu/core/deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : deps/SQLiteCpp-2.3.0/sqlite3/CMakeFiles/sqlite3.dir/depend

