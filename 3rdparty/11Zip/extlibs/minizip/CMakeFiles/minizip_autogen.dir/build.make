# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/netpipe/Desktop/VoiceAssistant

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/netpipe/Desktop/VoiceAssistant

# Utility rule file for minizip_autogen.

# Include any custom commands dependencies for this target.
include 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/progress.make

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic UIC for target minizip"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cmake -E cmake_autogen /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/AutogenInfo.json Release

minizip_autogen: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen
minizip_autogen: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/build.make
.PHONY : minizip_autogen

# Rule to build all files generated by this target.
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/build: minizip_autogen
.PHONY : 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/build

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/clean:
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && $(CMAKE_COMMAND) -P CMakeFiles/minizip_autogen.dir/cmake_clean.cmake
.PHONY : 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/clean

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/depend:
	cd /home/netpipe/Desktop/VoiceAssistant && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/netpipe/Desktop/VoiceAssistant /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip /home/netpipe/Desktop/VoiceAssistant /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip_autogen.dir/depend
