#!/bin/bash
# SCL <scott@rerobots.net>
# Copyright (C) 2020 rerobots, Inc.

source /opt/ros/melodic/setup.bash
if test -n "$TMUX"; then
    exec roslaunch robot.launch
else
    exec tmux new-session roslaunch robot.launch
fi
