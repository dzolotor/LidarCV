# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/pi/vehicleRec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/vehicleRec

# Include any dependencies generated for this target.
include CMakeFiles/DisplayVideo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DisplayVideo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DisplayVideo.dir/flags.make

CMakeFiles/DisplayVideo.dir/display_video.cpp.o: CMakeFiles/DisplayVideo.dir/flags.make
CMakeFiles/DisplayVideo.dir/display_video.cpp.o: display_video.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/vehicleRec/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DisplayVideo.dir/display_video.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DisplayVideo.dir/display_video.cpp.o -c /home/pi/vehicleRec/display_video.cpp

CMakeFiles/DisplayVideo.dir/display_video.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DisplayVideo.dir/display_video.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/vehicleRec/display_video.cpp > CMakeFiles/DisplayVideo.dir/display_video.cpp.i

CMakeFiles/DisplayVideo.dir/display_video.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DisplayVideo.dir/display_video.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/vehicleRec/display_video.cpp -o CMakeFiles/DisplayVideo.dir/display_video.cpp.s

CMakeFiles/DisplayVideo.dir/display_video.cpp.o.requires:

.PHONY : CMakeFiles/DisplayVideo.dir/display_video.cpp.o.requires

CMakeFiles/DisplayVideo.dir/display_video.cpp.o.provides: CMakeFiles/DisplayVideo.dir/display_video.cpp.o.requires
	$(MAKE) -f CMakeFiles/DisplayVideo.dir/build.make CMakeFiles/DisplayVideo.dir/display_video.cpp.o.provides.build
.PHONY : CMakeFiles/DisplayVideo.dir/display_video.cpp.o.provides

CMakeFiles/DisplayVideo.dir/display_video.cpp.o.provides.build: CMakeFiles/DisplayVideo.dir/display_video.cpp.o


CMakeFiles/DisplayVideo.dir/MSAC.cpp.o: CMakeFiles/DisplayVideo.dir/flags.make
CMakeFiles/DisplayVideo.dir/MSAC.cpp.o: MSAC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/vehicleRec/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DisplayVideo.dir/MSAC.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DisplayVideo.dir/MSAC.cpp.o -c /home/pi/vehicleRec/MSAC.cpp

CMakeFiles/DisplayVideo.dir/MSAC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DisplayVideo.dir/MSAC.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/vehicleRec/MSAC.cpp > CMakeFiles/DisplayVideo.dir/MSAC.cpp.i

CMakeFiles/DisplayVideo.dir/MSAC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DisplayVideo.dir/MSAC.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/vehicleRec/MSAC.cpp -o CMakeFiles/DisplayVideo.dir/MSAC.cpp.s

CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.requires:

.PHONY : CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.requires

CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.provides: CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.requires
	$(MAKE) -f CMakeFiles/DisplayVideo.dir/build.make CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.provides.build
.PHONY : CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.provides

CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.provides.build: CMakeFiles/DisplayVideo.dir/MSAC.cpp.o


CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o: CMakeFiles/DisplayVideo.dir/flags.make
CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o: errorNIETO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/vehicleRec/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o -c /home/pi/vehicleRec/errorNIETO.cpp

CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/vehicleRec/errorNIETO.cpp > CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.i

CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/vehicleRec/errorNIETO.cpp -o CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.s

CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.requires:

.PHONY : CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.requires

CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.provides: CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.requires
	$(MAKE) -f CMakeFiles/DisplayVideo.dir/build.make CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.provides.build
.PHONY : CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.provides

CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.provides.build: CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o


# Object files for target DisplayVideo
DisplayVideo_OBJECTS = \
"CMakeFiles/DisplayVideo.dir/display_video.cpp.o" \
"CMakeFiles/DisplayVideo.dir/MSAC.cpp.o" \
"CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o"

# External object files for target DisplayVideo
DisplayVideo_EXTERNAL_OBJECTS =

DisplayVideo: CMakeFiles/DisplayVideo.dir/display_video.cpp.o
DisplayVideo: CMakeFiles/DisplayVideo.dir/MSAC.cpp.o
DisplayVideo: CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o
DisplayVideo: CMakeFiles/DisplayVideo.dir/build.make
DisplayVideo: /usr/local/lib/libopencv_xphoto.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_xobjdetect.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_tracking.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_surface_matching.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_structured_light.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_stereo.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_saliency.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_rgbd.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_reg.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_plot.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_optflow.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_line_descriptor.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_fuzzy.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_dpm.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_dnn.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_datasets.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_ccalib.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_bioinspired.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_bgsegm.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_aruco.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_videostab.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_superres.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_stitching.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_photo.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_text.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_face.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_ximgproc.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_xfeatures2d.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_shape.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_video.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_objdetect.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_calib3d.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_features2d.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_ml.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_highgui.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_videoio.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_imgproc.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_flann.so.3.1.0
DisplayVideo: /usr/local/lib/libopencv_core.so.3.1.0
DisplayVideo: CMakeFiles/DisplayVideo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/vehicleRec/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable DisplayVideo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DisplayVideo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DisplayVideo.dir/build: DisplayVideo

.PHONY : CMakeFiles/DisplayVideo.dir/build

CMakeFiles/DisplayVideo.dir/requires: CMakeFiles/DisplayVideo.dir/display_video.cpp.o.requires
CMakeFiles/DisplayVideo.dir/requires: CMakeFiles/DisplayVideo.dir/MSAC.cpp.o.requires
CMakeFiles/DisplayVideo.dir/requires: CMakeFiles/DisplayVideo.dir/errorNIETO.cpp.o.requires

.PHONY : CMakeFiles/DisplayVideo.dir/requires

CMakeFiles/DisplayVideo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DisplayVideo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DisplayVideo.dir/clean

CMakeFiles/DisplayVideo.dir/depend:
	cd /home/pi/vehicleRec && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/vehicleRec /home/pi/vehicleRec /home/pi/vehicleRec /home/pi/vehicleRec /home/pi/vehicleRec/CMakeFiles/DisplayVideo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DisplayVideo.dir/depend

