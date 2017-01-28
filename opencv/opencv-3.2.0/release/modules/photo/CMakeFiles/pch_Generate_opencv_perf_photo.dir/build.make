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

# Utility rule file for pch_Generate_opencv_perf_photo.

# Include the progress variables for this target.
include modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/progress.make

modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo: modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch


modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch: ../modules/photo/perf/perf_precomp.hpp
modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch: modules/photo/perf_precomp.hpp
modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch: lib/libopencv_perf_photo_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo && /usr/bin/cmake -E make_directory /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo/perf_precomp.hpp.gch
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ts/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/photo/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgproc/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgproc/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/videoio/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/highgui/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/photo/perf" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -x c++-header -o /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo/perf_precomp.hpp

modules/photo/perf_precomp.hpp: ../modules/photo/perf/perf_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating perf_precomp.hpp"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo && /usr/bin/cmake -E copy_if_different /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/photo/perf/perf_precomp.hpp /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo/perf_precomp.hpp

pch_Generate_opencv_perf_photo: modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo
pch_Generate_opencv_perf_photo: modules/photo/perf_precomp.hpp.gch/opencv_perf_photo_RELEASE.gch
pch_Generate_opencv_perf_photo: modules/photo/perf_precomp.hpp
pch_Generate_opencv_perf_photo: modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/build.make

.PHONY : pch_Generate_opencv_perf_photo

# Rule to build all files generated by this target.
modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/build: pch_Generate_opencv_perf_photo

.PHONY : modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/build

modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/clean:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_perf_photo.dir/cmake_clean.cmake
.PHONY : modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/clean

modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/depend:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0 /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/photo /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/photo/CMakeFiles/pch_Generate_opencv_perf_photo.dir/depend

