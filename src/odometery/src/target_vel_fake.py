#!/usr/bin/env python
# license removed for brevity
import serial
import rospy
from std_msgs.msg import Float32


lwheel_vel = 0
rwheel_vel = 0
rwheel_flag = False
lwheel_flag = False


def talker():
    global rwheel_vel, lwheel_vel
    rwheel_vel = 0.1156
    lwheel_vel = 0.5565

    rospy.init_node("fake_vel")
    rate = rospy.Rate(20) # 10hz
    
    while not rospy.is_shutdown():
  	  with serial.Serial('/dev/ttyTHS2', 115200, timeout=10) as ser:  # open serial port
		while True:
			print("sending " + "r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";")
			ser.write(("r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";").encode())
	  		rate.sleep()


	
if __name__ == '__main__':
    try:
	talker()
    except rospy.ROSInterruptException:
        pass


