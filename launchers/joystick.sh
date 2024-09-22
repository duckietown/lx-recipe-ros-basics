#!/bin/bash


source /environment.sh

source /opt/ros/noetic/setup.bash
source /code/catkin_ws/devel/setup.bash --extend

exec rosrun dt-joystick-demo dt-joystick-demo-node.py
