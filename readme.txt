

############### For Users ###############


This directory is your workspace for all mantis-related ROS packages. The
first time you checkout this workspace, you should run the following command:

    $source ./install.sh


In order to run the simulation, you should run:

    $./mantis_simulation.sh


In order to fully exit, you must type ctrl-c in the terminal after closing.


############### For Developers  ###############


In order to make your packages you should cd to this root directory and run:

    $catkin_make



For released demo programs on the dedicated robotics workstation, you are required
to make sure that a link to the mantis_simulation.sh script on the desktop
is present and maintained after changes.

(current mantis desktop launcher is broken)


############### moveit  ###############

To generate a moveit configuration package for a robot model, execute:

    $roslaunch moveit_setup_assistant setup_assistant.launch

Load the .xacro model of the robot you wish to use with path-planning.
In order to run the mantis moveit config file, execute:

    $roslaunch mantis_moveit_config demo.launch






#sh scratchpad#
#get current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"



