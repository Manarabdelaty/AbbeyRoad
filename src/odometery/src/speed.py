#!/usr/bin/env python
# license removed for brevity
import serial
import rospy

from std_msgs.msg import Int16
from std_msgs.msg import Float32

ser = 0



lwheel_vel_dac = 75
rwheel_vel_dac = 78




def talker():
    global ser
    global left_data_old
    global right_data_old
    global left_data_old_turn
    global right_data_old_turn


    ser = serial.Serial('/dev/ttyTHS2', 115200, timeout=10)


    rospy.init_node("speed")
    rate = rospy.Rate(1) # 10hz
	
    while not rospy.is_shutdown():
	encoder_buffer = ""
	rwheel_buffer = ""
        lwheel_buffer = ""
	isRight = True
	i = 0
	while True:
		ser.write(("r:"+ str(round(rwheel_vel_dac, 3)) + "l:" + str(round(lwheel_vel_dac, 3)) + ";").encode())
		rate.sleep()

if __name__ == '__main__':
    try:
	talker()
    except rospy.ROSInterruptException:
        pass

