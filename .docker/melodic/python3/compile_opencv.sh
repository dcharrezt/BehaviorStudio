#!/bin/sh
sudo apt-get install -y python-catkin-tools python3-dev python3-catkin-pkg-modules python3-numpy python3-yaml ros-melodic-cv-bridge
mkdir catkin_workspace
cd catkin_workspace
catkin init
# Is possible to change the python version
catkin config -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.6m -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so
catkin config --install
git clone https://github.com/ros-perception/vision_opencv.git src/vision_opencv
#apt-cache show ros-melodic-cv-bridge | grep Version
cd src/vision_opencv/ 
git checkout 1.13.0
cd ../../
catkin build cv_bridge
source install/setup.bash --extend # or use setup.zsh
