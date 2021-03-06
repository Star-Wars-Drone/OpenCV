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

# Utility rule file for pch_Generate_opencv_ml.

# Include the progress variables for this target.
include modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/progress.make

modules/ml/CMakeFiles/pch_Generate_opencv_ml: modules/ml/precomp.hpp.gch/opencv_ml_RELEASE.gch


modules/ml/precomp.hpp.gch/opencv_ml_RELEASE.gch: ../modules/ml/src/precomp.hpp
modules/ml/precomp.hpp.gch/opencv_ml_RELEASE.gch: modules/ml/precomp.hpp
modules/ml/precomp.hpp.gch/opencv_ml_RELEASE.gch: lib/libopencv_ml_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating precomp.hpp.gch/opencv_ml_RELEASE.gch"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml && /usr/bin/cmake -E make_directory /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml/precomp.hpp.gch
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG -fPIC "-D__OPENCV_BUILD=1" "-DCVAPI_EXPORTS" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ml/include" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ml/src" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml" -I"/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/core/include" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -DCVAPI_EXPORTS -x c++-header -o /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml/precomp.hpp.gch/opencv_ml_RELEASE.gch /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml/precomp.hpp

modules/ml/precomp.hpp: ../modules/ml/src/precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating precomp.hpp"
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml && /usr/bin/cmake -E copy_if_different /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ml/src/precomp.hpp /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml/precomp.hpp

pch_Generate_opencv_ml: modules/ml/CMakeFiles/pch_Generate_opencv_ml
pch_Generate_opencv_ml: modules/ml/precomp.hpp.gch/opencv_ml_RELEASE.gch
pch_Generate_opencv_ml: modules/ml/precomp.hpp
pch_Generate_opencv_ml: modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/build.make

.PHONY : pch_Generate_opencv_ml

# Rule to build all files generated by this target.
modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/build: pch_Generate_opencv_ml

.PHONY : modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/build

modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/clean:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_ml.dir/cmake_clean.cmake
.PHONY : modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/clean

modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/depend:
	cd /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0 /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/modules/ml /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml /media/linaro/OpenCV/OpenCV/opencv/opencv-3.2.0/release/modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/ml/CMakeFiles/pch_Generate_opencv_ml.dir/depend

