# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sishubin/桌面/sirius_to_std_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sishubin/桌面/sirius_to_std_ws/build

# Utility rule file for sirius2std_generate_messages_py.

# Include the progress variables for this target.
include sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/progress.make

sirius2std/CMakeFiles/sirius2std_generate_messages_py: /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/_IMU.py
sirius2std/CMakeFiles/sirius2std_generate_messages_py: /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/__init__.py


/home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/_IMU.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/_IMU.py: /home/sishubin/桌面/sirius_to_std_ws/src/sirius2std/msg/IMU.msg
/home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/_IMU.py: /opt/ros/melodic/share/std_msgs/msg/Header.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sishubin/桌面/sirius_to_std_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG sirius2std/IMU"
	cd /home/sishubin/桌面/sirius_to_std_ws/build/sirius2std && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/sishubin/桌面/sirius_to_std_ws/src/sirius2std/msg/IMU.msg -Isirius2std:/home/sishubin/桌面/sirius_to_std_ws/src/sirius2std/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p sirius2std -o /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg

/home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/__init__.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/__init__.py: /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/_IMU.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sishubin/桌面/sirius_to_std_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python msg __init__.py for sirius2std"
	cd /home/sishubin/桌面/sirius_to_std_ws/build/sirius2std && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg --initpy

sirius2std_generate_messages_py: sirius2std/CMakeFiles/sirius2std_generate_messages_py
sirius2std_generate_messages_py: /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/_IMU.py
sirius2std_generate_messages_py: /home/sishubin/桌面/sirius_to_std_ws/devel/lib/python2.7/dist-packages/sirius2std/msg/__init__.py
sirius2std_generate_messages_py: sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/build.make

.PHONY : sirius2std_generate_messages_py

# Rule to build all files generated by this target.
sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/build: sirius2std_generate_messages_py

.PHONY : sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/build

sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/clean:
	cd /home/sishubin/桌面/sirius_to_std_ws/build/sirius2std && $(CMAKE_COMMAND) -P CMakeFiles/sirius2std_generate_messages_py.dir/cmake_clean.cmake
.PHONY : sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/clean

sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/depend:
	cd /home/sishubin/桌面/sirius_to_std_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sishubin/桌面/sirius_to_std_ws/src /home/sishubin/桌面/sirius_to_std_ws/src/sirius2std /home/sishubin/桌面/sirius_to_std_ws/build /home/sishubin/桌面/sirius_to_std_ws/build/sirius2std /home/sishubin/桌面/sirius_to_std_ws/build/sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sirius2std/CMakeFiles/sirius2std_generate_messages_py.dir/depend
