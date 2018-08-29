basic_kobuki <small>(version 1)</small>
============

Description
-----------

The workspace type has two compute nodes:

1. hostname `rrc0`: offboard (physically outside the reachable space); x86_64 GNU/Linux box.
2. hostname `rrc1`: mounted onboard the robot; small, low-power ARM board (armv7l).

### on rrc0

There are two webcams attached and visible from the device files `/dev/video0`
and `/dev/video1`.

### on rrc1

The Kobuki mobile platform and Hokuyo laser scanner are both attached via USB.
In the default image, the home directory contains the
[roslaunch](https://wiki.ros.org/roslaunch) file [robot.launch](
https://github.com/rerobots/workspaces/blob/master/src/basic_kobuki/robot.launch).
This file starts a ROS Kinetic configuration for using the robot.
It uses the ROS packages [urg_node](https://wiki.ros.org/urg_node) and
[kobuki_node](https://wiki.ros.org/kobuki_node).


Bill of materials
-----------------

* [Kobuki](http://kobuki.yujinrobot.com/)
* [Raspberry Pi 3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/)
* [Hokuyo URG-04LX-UG01](https://www.hokuyo-aut.jp/search/single.php?serial=166)
* [Logitech Webcam C920](https://www.logitech.com/en-us/product/hd-pro-webcam-c920) ([on Amazon.com](https://www.amazon.com/gp/product/B006JH8T3S/))


Photographs of a deployment
---------------------------

<a title="enlarge" href="figures/basic_kobuki_prototype.jpg">![Kobuki mobile base on its charging station and with Hokuyo laser range finder and Raspberry Pi 3 Model B mounted](figures/480px-basic_kobuki_prototype.jpg)</a>
