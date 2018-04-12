# SCL <scott@rerobots.net>
# Copyright (C) 2018 rerobots, Inc.

FROM ubuntu:xenial

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list' \
    && apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 \
    && apt-get update \
    && apt-get -y install \
       openssh-server \
       openvpn \
       avahi-daemon \
       nano \
       ros-kinetic-ros-base \
       ros-kinetic-xacro \
       ros-kinetic-robot-state-publisher \
       ros-kinetic-urg-node \
       ros-kinetic-kobuki-node \
       ros-kinetic-kobuki-description \
    && mkdir -p /var/run/sshd

CMD ["/usr/sbin/sshd", "-D"]
