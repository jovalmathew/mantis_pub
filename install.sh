#!/bin/bash

#Capture the current working directory string into variable $DIR
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Update the apt package manager database with most recent ROS releases
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net:80 --recv-key 0xB01FA116

#Install ROS (jade)
sudo apt-get update
sudo apt-get install ros-jade-desktop-full

#Set up dependency manager
sudo rosdep init
rosdep update

#Load the ros environment variables
source /opt/ros/jade/setup.bash
#Register them to be loaded on each terminal session
echo "source /opt/ros/jade/setup.bash" >> ~/.bashrc

#install packages
sudo apt-get install ros-jade-gazebo-ros-control
sudo apt-get install ros-jade-ros-control
sudo apt-get install ros-jade-ros-controllers
sudo apt-get install ros-jade-moveit
sudo apt-get install ros-jade-industrial-core



#Create a semantic link to the main catkin makefile of the ROS install
cd src
catkin_init_workspace

#Perform an initial build
cd ..
catkin_make


#Load the relevant environment variables by running the new setup script
source devel/setup.bash
#Register this script to run on every terminal initiation
echo "source $DIR/devel/setup.bash" >> ~/.bashrc

#Messages to user
echo
echo "Your ROS_PACKAGE_PATH is:"
echo $ROS_PACKAGE_PATH
echo
echo "Your workspace is now ready"
