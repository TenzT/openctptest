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
include cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/compiler_depend.make

# Include the progress variables for this target.
include cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/progress.make

# Include the compile flags for this target's objects.
include cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/flags.make

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/flags.make
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o: cpp/yijinjing/node/src/sqlite3/backup.cc
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o -MF CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o.d -o CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o -c /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/backup.cc

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.i"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/backup.cc > CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.i

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.s"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/backup.cc -o CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.s

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/flags.make
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o: cpp/yijinjing/node/src/sqlite3/database.cc
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o -MF CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o.d -o CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o -c /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/database.cc

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.i"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/database.cc > CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.i

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.s"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/database.cc -o CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.s

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/flags.make
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o: cpp/yijinjing/node/src/sqlite3/node_sqlite3.cc
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o -MF CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o.d -o CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o -c /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/node_sqlite3.cc

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.i"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/node_sqlite3.cc > CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.i

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.s"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/node_sqlite3.cc -o CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.s

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/flags.make
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o: cpp/yijinjing/node/src/sqlite3/statement.cc
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o -MF CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o.d -o CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o -c /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/statement.cc

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.i"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/statement.cc > CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.i

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.s"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tandezhi/kungfu/core/cpp/yijinjing/node/src/sqlite3/statement.cc -o CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.s

# Object files for target node_sqlite3
node_sqlite3_OBJECTS = \
"CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o" \
"CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o" \
"CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o" \
"CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o"

# External object files for target node_sqlite3
node_sqlite3_EXTERNAL_OBJECTS =

node_sqlite3.node: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/backup.cc.o
node_sqlite3.node: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/database.cc.o
node_sqlite3.node: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/node_sqlite3.cc.o
node_sqlite3.node: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/src/sqlite3/statement.cc.o
node_sqlite3.node: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/build.make
node_sqlite3.node: deps/SQLiteCpp-2.3.0/sqlite3/libsqlite3.a
node_sqlite3.node: cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tandezhi/kungfu/core/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../../node_sqlite3.node"
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/node_sqlite3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/build: node_sqlite3.node
.PHONY : cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/build

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/clean:
	cd /Users/tandezhi/kungfu/core/cpp/yijinjing/node && $(CMAKE_COMMAND) -P CMakeFiles/node_sqlite3.dir/cmake_clean.cmake
.PHONY : cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/clean

cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/depend:
	cd /Users/tandezhi/kungfu/core && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tandezhi/kungfu/core /Users/tandezhi/kungfu/core/cpp/yijinjing/node /Users/tandezhi/kungfu/core /Users/tandezhi/kungfu/core/cpp/yijinjing/node /Users/tandezhi/kungfu/core/cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : cpp/yijinjing/node/CMakeFiles/node_sqlite3.dir/depend

