#!/bin/bash


source /environment.sh

source /opt/ros/noetic/setup.bash
source /code/devel/setup.bash --extend

if rosnode list | grep -q "joy_mapper_node"; then
  rosnode kill /$VEHICLE_NAME/joy_mapper_node
fi
exec rosrun dt-joystick-demo dt-joystick-demo-node.py
