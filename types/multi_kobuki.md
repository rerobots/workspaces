---
version: 2
---

# multi_kobuki

## Description

The **multi_kobuki** workspace type is an extension of the [basic_kobuki](
basic_kobuki.html) type to have more than one mobile robot.

The workspace type has two or more compute nodes:

* hostname `rrc0`: offboard (physically outside the reachable space); x86_64 GNU/Linux box.
* hostnames `rrc1` ... `rrcN`: each mounted onboard one of the robots; small, low-power ARM board (armv7l).

### on rrc0

There are two webcams attached and visible from the device files `/dev/video0`
and `/dev/video1`.

### on rrc1

The Kobuki mobile platform and Hokuyo laser scanner are both attached via USB.
In the default image, the home directory contains the
[roslaunch](https://wiki.ros.org/roslaunch) file [robot.launch](
https://github.com/rerobots/workspaces/blob/master/src/multi_kobuki/robot.launch).
This file starts a ROS Kinetic configuration for using the robot.
It uses the ROS packages [urg_node](https://wiki.ros.org/urg_node) and
[kobuki_node](https://wiki.ros.org/kobuki_node).

### on rrc2 ... rrcN

After the first mobile robot, deployments of this workspace type can include any
number of mobile robots. Each is entirely similar to `rrc1`, except that it
might have an RPLIDAR A2 laser scanner instead of one by Hokuyo. In that case,
the reference robot.launch would instead use the ROS package
[rplidar](https://wiki.ros.org/rplidar), as shown [in the source code](
https://github.com/rerobots/workspaces/blob/master/src/multi_kobuki/robot-RPLIDAR.launch).


## Bill of materials

* [Kobuki](http://kobuki.yujinrobot.com/)
* [Raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)
* [Hokuyo URG-04LX-UG01](https://www.hokuyo-aut.jp/search/single.php?serial=166)
* [RPLIDAR A2](https://www.slamtec.com/en/lidar/A2)
* [Logitech Webcam C920](https://www.logitech.com/en-us/product/hd-pro-webcam-c920) ([on Amazon.com](https://www.amazon.com/gp/product/B006JH8T3S/))


## Photographs of a deployment

<a title="enlarge" href="figures/multi_kobuki_cornerview.jpg">![two Kobuki mobile bases; one with Hokuyo laser range finder and Raspberry Pi 3 Model B mounted](figures/480px-multi_kobuki_cornerview.jpg)</a>
