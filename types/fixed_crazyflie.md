fixed_crazyflie
===============

<div class="alert alert-danger" role="alert">This is currently a DRAFT definition and is NOT NORMATIVE.</div>

Description
-----------

The **fixed_crazyflie** workspace type contains a [Crazyflie 2.0
quadrotor](https://www.bitcraze.io/crazyflie-2/) fixed in a vise.  Because it is
in a vise, the quadrotor center of mass does not move significantly, but the
rotors are free to spin in response to motion commands. There is one webcam
attached and visible from the device file `/dev/video0`.  The host has
architecture x86_64. The quadrotor is connected with USB and, thus, can be
reached from the Crazyflie client library at the address `usb://0`.


Bill of materials
-----------------

* [Crazyflie 2.0](https://www.bitcraze.io/crazyflie-2/)
* [Logitech Webcam C310](https://www.logitech.com/en-us/product/hd-webcam-c310) ([on Amazon.com](https://www.amazon.com/gp/product/B003LVZO8S/))


Photographs of a deployment
---------------------------

<a title="enlarge" href="figures/fixed_crazyflie_example_sideview.png">![side view of a workspace deployment of fixed_crazyflie](figures/480px-fixed_crazyflie_example_sideview.png)</a>
