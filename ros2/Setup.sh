#!/bin/bash

# Setup script to install dependencies necessary for ROS2 AirSim Nodes
# - TheDarcLord / DerGenetiker

sudo apt-get install -y 		\
	ros-humble-mavros		\
	ros-humble-cv-bridge		\
	ros-humble-tf2			\
	ros-humble-geographic-info	\
	ros-humble-image-common
