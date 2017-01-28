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
CMAKE_SOURCE_DIR = /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release

# Utility rule file for pch_Generate_opencv_perf_stitching.

# Include the progress variables for this target.
include modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/progress.make

modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching: modules/stitching/perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch


modules/stitching/perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch: ../modules/stitching/perf/perf_precomp.hpp
modules/stitching/perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch: modules/stitching/perf_precomp.hpp
modules/stitching/perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch: lib/libopencv_perf_stitching_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching && /usr/bin/cmake -E make_directory /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching/perf_precomp.hpp.gch
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ts/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/stitching/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/flann/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgproc/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ml/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/videoio/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/highgui/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/objdetect/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/features2d/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/calib3d/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgproc/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/videoio/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/highgui/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/stitching/perf" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -x c++-header -o /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching/perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching/perf_precomp.hpp

modules/stitching/perf_precomp.hpp: ../modules/stitching/perf/perf_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating perf_precomp.hpp"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching && /usr/bin/cmake -E copy_if_different /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/stitching/perf/perf_precomp.hpp /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching/perf_precomp.hpp

pch_Generate_opencv_perf_stitching: modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching
pch_Generate_opencv_perf_stitching: modules/stitching/perf_precomp.hpp.gch/opencv_perf_stitching_RELEASE.gch
pch_Generate_opencv_perf_stitching: modules/stitching/perf_precomp.hpp
pch_Generate_opencv_perf_stitching: modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/build.make

.PHONY : pch_Generate_opencv_perf_stitching

# Rule to build all files generated by this target.
modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/build: pch_Generate_opencv_perf_stitching

.PHONY : modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/build

modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/clean:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_perf_stitching.dir/cmake_clean.cmake
.PHONY : modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/clean

modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/depend:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0 /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/stitching /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/stitching/CMakeFiles/pch_Generate_opencv_perf_stitching.dir/depend

