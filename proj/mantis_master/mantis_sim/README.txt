####################################################
###################### README ######################
####################################################

# Running the Model

This package serves to visualize and interact with TUI's robotic manipulator MANTIS. 

This model is built to run with Ubuntu 14.04 and Indigo. Packages that are installed should be done using their Indigo version. 

Prerequisite Packages:
The following packages are necessary for the model to run:
MoveIt!
Gazebo 2.x

Make sure that this package exists on the ROS package path, which can be checked with the command: 

echo $ROS_PACKAGE_PATH 

If running the package for the first time, be sure to run the following command:
catkin_make

In order to pull the MANTIS model up on RViz, run the following command:

roslaunch mantis_sim display.launch model:=urdf/model.urdf.xacro

This command will read the file display.launch, located in the mantis_sim package. We give it an optional 'model' argument to specify the URDF file. This argument need not be specifed, in which case 'model.urdf.xacro' will be launched automatically.


######################################################
Gazebo can also be used to visualize the MANTIS unit. This can be done by calling the gazebo launch file:

roslaunch mantis_sim mantis_gazebo.launch model:=urdf/model.gazebo

Current model options currently are: 
model.gazebo
model.urdf.xacro
modular_model.urdf.xacro

Of these options, model.gazebo and model.urdf.xacro are identical and are the most updated versions of the MANTIS.

#######################################################
model.gazebo can be used in conjunction with ROS controllers to command the joints of the MANTIS. This can be done using the RQT GUI, commanding joint positions explicitly through the terminal, or through nodes. 
If using the Kinetic Kame distribution of ROS, Gazebo  may not support ROS Control. As a fix, download the latest version of gazebo_ros_pkgs on Github: 

https://github.com/ros-simulation/gazebo_ros_pkgs.git

For further help on the matter, visit

question2373.rssing.com/browser.php?indx=38634768&item=490

With ROS Control functional, our simulation can be controlled by publishing to various topics. This can be done using nodes, directly through a terminal window, or through the RQT GUI. 

