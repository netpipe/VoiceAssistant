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

# Include any dependencies generated for this target.
include 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.make

# Include the progress variables for this target.
include 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.o: 3rdparty/11Zip/extlibs/minizip/mz_crypt.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.o -MF CMakeFiles/minizip.dir/mz_crypt.c.o.d -o CMakeFiles/minizip.dir/mz_crypt.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_crypt.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_crypt.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_crypt.c > CMakeFiles/minizip.dir/mz_crypt.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_crypt.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_crypt.c -o CMakeFiles/minizip.dir/mz_crypt.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.o: 3rdparty/11Zip/extlibs/minizip/mz_os.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.o -MF CMakeFiles/minizip.dir/mz_os.c.o.d -o CMakeFiles/minizip.dir/mz_os.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_os.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os.c > CMakeFiles/minizip.dir/mz_os.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_os.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os.c -o CMakeFiles/minizip.dir/mz_os.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.o: 3rdparty/11Zip/extlibs/minizip/mz_strm.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.o -MF CMakeFiles/minizip.dir/mz_strm.c.o.d -o CMakeFiles/minizip.dir/mz_strm.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm.c > CMakeFiles/minizip.dir/mz_strm.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm.c -o CMakeFiles/minizip.dir/mz_strm.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.o: 3rdparty/11Zip/extlibs/minizip/mz_strm_buf.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.o -MF CMakeFiles/minizip.dir/mz_strm_buf.c.o.d -o CMakeFiles/minizip.dir/mz_strm_buf.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_buf.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_buf.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_buf.c > CMakeFiles/minizip.dir/mz_strm_buf.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_buf.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_buf.c -o CMakeFiles/minizip.dir/mz_strm_buf.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.o: 3rdparty/11Zip/extlibs/minizip/mz_strm_mem.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.o -MF CMakeFiles/minizip.dir/mz_strm_mem.c.o.d -o CMakeFiles/minizip.dir/mz_strm_mem.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_mem.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_mem.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_mem.c > CMakeFiles/minizip.dir/mz_strm_mem.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_mem.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_mem.c -o CMakeFiles/minizip.dir/mz_strm_mem.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.o: 3rdparty/11Zip/extlibs/minizip/mz_strm_split.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.o -MF CMakeFiles/minizip.dir/mz_strm_split.c.o.d -o CMakeFiles/minizip.dir/mz_strm_split.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_split.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_split.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_split.c > CMakeFiles/minizip.dir/mz_strm_split.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_split.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_split.c -o CMakeFiles/minizip.dir/mz_strm_split.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.o: 3rdparty/11Zip/extlibs/minizip/mz_zip.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.o -MF CMakeFiles/minizip.dir/mz_zip.c.o.d -o CMakeFiles/minizip.dir/mz_zip.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_zip.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip.c > CMakeFiles/minizip.dir/mz_zip.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_zip.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip.c -o CMakeFiles/minizip.dir/mz_zip.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.o: 3rdparty/11Zip/extlibs/minizip/mz_zip_rw.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.o -MF CMakeFiles/minizip.dir/mz_zip_rw.c.o.d -o CMakeFiles/minizip.dir/mz_zip_rw.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip_rw.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_zip_rw.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip_rw.c > CMakeFiles/minizip.dir/mz_zip_rw.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_zip_rw.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_zip_rw.c -o CMakeFiles/minizip.dir/mz_zip_rw.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.o: 3rdparty/11Zip/extlibs/minizip/mz_strm_zlib.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.o -MF CMakeFiles/minizip.dir/mz_strm_zlib.c.o.d -o CMakeFiles/minizip.dir/mz_strm_zlib.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_zlib.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_zlib.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_zlib.c > CMakeFiles/minizip.dir/mz_strm_zlib.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_zlib.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_zlib.c -o CMakeFiles/minizip.dir/mz_strm_zlib.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.o: 3rdparty/11Zip/extlibs/minizip/mz_os_posix.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.o -MF CMakeFiles/minizip.dir/mz_os_posix.c.o.d -o CMakeFiles/minizip.dir/mz_os_posix.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os_posix.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_os_posix.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os_posix.c > CMakeFiles/minizip.dir/mz_os_posix.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_os_posix.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_os_posix.c -o CMakeFiles/minizip.dir/mz_os_posix.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.o: 3rdparty/11Zip/extlibs/minizip/mz_strm_os_posix.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.o -MF CMakeFiles/minizip.dir/mz_strm_os_posix.c.o.d -o CMakeFiles/minizip.dir/mz_strm_os_posix.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_os_posix.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_strm_os_posix.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_os_posix.c > CMakeFiles/minizip.dir/mz_strm_os_posix.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_strm_os_posix.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_strm_os_posix.c -o CMakeFiles/minizip.dir/mz_strm_os_posix.c.s

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/flags.make
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.o: 3rdparty/11Zip/extlibs/minizip/mz_compat.c
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.o: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.o"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.o -MF CMakeFiles/minizip.dir/mz_compat.c.o.d -o CMakeFiles/minizip.dir/mz_compat.c.o -c /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_compat.c

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minizip.dir/mz_compat.c.i"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_compat.c > CMakeFiles/minizip.dir/mz_compat.c.i

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minizip.dir/mz_compat.c.s"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/mz_compat.c -o CMakeFiles/minizip.dir/mz_compat.c.s

# Object files for target minizip
minizip_OBJECTS = \
"CMakeFiles/minizip.dir/mz_crypt.c.o" \
"CMakeFiles/minizip.dir/mz_os.c.o" \
"CMakeFiles/minizip.dir/mz_strm.c.o" \
"CMakeFiles/minizip.dir/mz_strm_buf.c.o" \
"CMakeFiles/minizip.dir/mz_strm_mem.c.o" \
"CMakeFiles/minizip.dir/mz_strm_split.c.o" \
"CMakeFiles/minizip.dir/mz_zip.c.o" \
"CMakeFiles/minizip.dir/mz_zip_rw.c.o" \
"CMakeFiles/minizip.dir/mz_strm_zlib.c.o" \
"CMakeFiles/minizip.dir/mz_os_posix.c.o" \
"CMakeFiles/minizip.dir/mz_strm_os_posix.c.o" \
"CMakeFiles/minizip.dir/mz_compat.c.o"

# External object files for target minizip
minizip_EXTERNAL_OBJECTS =

3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_crypt.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_buf.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_mem.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_split.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_zip_rw.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_zlib.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_os_posix.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_strm_os_posix.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/mz_compat.c.o
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/build.make
3rdparty/11Zip/extlibs/minizip/libminizip.a: 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/netpipe/Desktop/VoiceAssistant/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C static library libminizip.a"
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && $(CMAKE_COMMAND) -P CMakeFiles/minizip.dir/cmake_clean_target.cmake
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minizip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/build: 3rdparty/11Zip/extlibs/minizip/libminizip.a
.PHONY : 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/build

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/clean:
	cd /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip && $(CMAKE_COMMAND) -P CMakeFiles/minizip.dir/cmake_clean.cmake
.PHONY : 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/clean

3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/depend:
	cd /home/netpipe/Desktop/VoiceAssistant && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/netpipe/Desktop/VoiceAssistant /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip /home/netpipe/Desktop/VoiceAssistant /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip /home/netpipe/Desktop/VoiceAssistant/3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdparty/11Zip/extlibs/minizip/CMakeFiles/minizip.dir/depend

