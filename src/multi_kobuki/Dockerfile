# docker build -t rerobots/workspaces-multi_kobuki -f Dockerfile .
#
#
# SCL <scott@rerobots.net>
# Copyright (C) 2018, 2020 rerobots, Inc.

FROM ubuntu:18.04

RUN apt-get update && apt-get -y install gnupg

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list' \
    && apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
    && apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
       openssh-server \
       openvpn \
       avahi-daemon \
       nano \
       tmux \
       magic-wormhole \
       ros-melodic-ros-base \
       ros-melodic-kobuki-*

RUN mkdir -p /var/run/sshd

COPY robot.launch /root/

RUN apt-get -y install git

RUN mkdir -p /root/catkin_ws/src

RUN cd /root && git clone --single-branch --branch melodic https://github.com/yujinrobot/kobuki.git
RUN cd /root/catkin_ws/src && mv ../../kobuki/kobuki_description ../../kobuki/kobuki_node ../../kobuki/kobuki_safety_controller ../../kobuki/kobuki_bumper2pc ../../kobuki/kobuki_keyop .

RUN cd /root && git clone https://github.com/yujinrobot/yujin_ocs.git
RUN cd /root/catkin_ws/src && mv ../../yujin_ocs/yocs_cmd_vel_mux ../../yujin_ocs/yocs_controllers .

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
       ros-melodic-xacro \
       ros-melodic-robot-state-publisher \
       ros-melodic-urg-node \
       ros-melodic-angles \
       ros-melodic-ecl-streams \
       libyaml-cpp-dev

RUN bash -c 'source /opt/ros/melodic/setup.bash && cd /root/catkin_ws && catkin_make_isolated -j 1 --install --install-space /opt/ros/melodic'

COPY start-ros-teleop.sh /root/

CMD ["/usr/sbin/sshd", "-D"]
