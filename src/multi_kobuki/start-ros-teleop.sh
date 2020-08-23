#!/bin/bash
# SCL <scott@rerobots.net>
# Copyright (C) 2020 rerobots, Inc.

source /opt/ros/melodic/setup.bash
if pgrep -f robot.launch > /dev/null && rostopic list > /dev/null 2>&1; then
    echo 'WARNING: robot.launch appears to be running'
    echo 'WARNING: you may need to stop it first, for example'
    echo ''
    echo 'tmux attach'
    echo ''
    echo 'then Ctrl-C, or pkill -f robot.launch'
    sleep 2
fi
echo 'Starting'
if test -n "$TMUX"; then
    tmux new-window -d roslaunch robot.launch
    while ! rostopic list > /dev/null 2>&1; do
	sleep 2
	echo -n '.'
    done
    exec roslaunch kobuki_keyop keyop.launch
else
    tmux new-session -d roslaunch robot.launch
    while ! rostopic list > /dev/null 2>&1; do
	sleep 2
	echo -n '.'
    done
    exec tmux new-session roslaunch kobuki_keyop keyop.launch
fi
