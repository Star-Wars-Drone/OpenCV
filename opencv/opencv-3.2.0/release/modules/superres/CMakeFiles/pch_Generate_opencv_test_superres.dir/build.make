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

# Utility rule file for pch_Generate_opencv_test_superres.

# Include the progress variables for this target.
include modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/progress.make

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch


modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch: ../modules/superres/test/test_precomp.hpp
modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch: modules/superres/test_precomp.hpp
modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch: lib/libopencv_test_superres_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres && /usr/bin/cmake -E make_directory /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres/test_precomp.hpp.gch
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ts/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/superres/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/videoio/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgproc/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/video/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/videoio/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgproc/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/imgcodecs/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/videoio/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/highgui/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/superres/test" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Winit-self -Wpointer-arith -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -Wno-undef -Wno-shadow -x c++-header -o /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres/test_precomp.hpp

modules/superres/test_precomp.hpp: ../modules/superres/test/test_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating test_precomp.hpp"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres && /usr/bin/cmake -E copy_if_different /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/superres/test/test_precomp.hpp /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres/test_precomp.hpp

pch_Generate_opencv_test_superres: modules/superres/CMakeFiles/pch_Generate_opencv_test_superres
pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch
pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp
pch_Generate_opencv_test_superres: modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build.make

.PHONY : pch_Generate_opencv_test_superres

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build: pch_Generate_opencv_test_superres

.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/clean:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_superres.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/clean

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/depend:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0 /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/superres /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/depend

