#!/usr/bin/env python
"""
SCL <scott@rerobots.net>
Copyright (C) 2020 rerobots, Inc.
"""
import time

import rospy
from geometry_msgs.msg import Twist


def main():
    movec = rospy.Publisher('mobile_base/commands/velocity', Twist, queue_size=1)
    rospy.init_node('multi_kobuki_wander')
    rate = rospy.Rate(10)
    st = time.time()
    while not rospy.is_shutdown() and time.time() - st < 10:
        m = Twist()
        m.linear.x = -.1
        movec.publish(m)
        rate.sleep()
    m = Twist()
    m.linear.x = 0
    movec.publish(m)


if __name__ == '__main__':
    main()
