fixed_crazyflie (DRAFT)
=======================

This is currently a draft definition and is NOT NORMATIVE.

The **fixed_crazyflie** workspace type contains a [Crazyflie 2.0
quadrotor](https://www.bitcraze.io/crazyflie-2/) fixed in a vise.  Because it is
in a vise, the quadrotor center of mass does not move significantly, but the
rotors are free to spin in response to motion commands. There is one webcam
attached and visible from the device file `/dev/video0`.  The host has
architecture x86_64.
