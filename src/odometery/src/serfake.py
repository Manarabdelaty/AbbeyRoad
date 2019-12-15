#!/usr/bin/env python
# license removed for brevity
import serial
import rospy
from std_msgs.msg import Int16


def talker():
    lwheel_pub = rospy.Publisher('lwheel', Int16, queue_size=10)
    rwheel_pub = rospy.Publisher('rwheel', Int16, queue_size=10)
    rospy.init_node("encoder")
    rate = rospy.Rate(10) # 10hz
    fake_ticks = 0
    
   	
    while not rospy.is_shutdown():
	fake_ticks = fake_ticks + 1
	rfake = fake_ticks - 1
	rwheel_pub.publish(Int16(rfake))
	lwheel_pub.publish(Int16(fake_ticks))
	rate.sleep()

if __name__ == '__main__':
    try:
	talker()
    except rospy.ROSInterruptException:
        pass

