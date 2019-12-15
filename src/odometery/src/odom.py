#!/usr/bin/env python
# license removed for brevity
import serial
import rospy
from std_msgs.msg import Int16
from std_msgs.msg import Float32

ser = 0
lwheel_vel = 0
rwheel_vel = 0
rwheel_flag = False
lwheel_flag = False
left_data_old = 0
right_data_old = 0

dac_min = 50

def lwheelCallback(msg):
	global lwheel_vel, rwheel_vel
	global ser

	if msg.data > 0:
		lwheel_vel = msg.data + dac_min
	else:
		lwheel_vel = 0

	lwheel_flag = True
	print("lwheel: ", lwheel_vel)
	ser.write(("r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";").encode())

def rwheelCallback(msg):
	global ser
	global rwheel_vel, lwheel_vel

	if msg.data > 0:
		rwheel_vel = dac_min + msg.data
	else:
		rwheel_vel = 0

	rwheel_flag = True
	print("rwheel: ", rwheel_vel)
	ser.write(("r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";").encode())

def talker():
    global ser
    global left_data_old
    global right_data_old
    ser = serial.Serial('/dev/ttyTHS2', 115200, timeout=10)
    lwheel_pub = rospy.Publisher('lwheel', Int16, queue_size=10)
    rwheel_pub = rospy.Publisher('rwheel', Int16, queue_size=10)

    rospy.Subscriber('lmotor_cmd', Float32 , lwheelCallback)
    rospy.Subscriber('rmotor_cmd', Float32 , rwheelCallback)

    rospy.Subscriber('lwheel_tick', Float32 , lwheelTickCallback)
    rospy.Subscriber('rwheel_tick', Float32 , rwheelTickCallback)

    rospy.init_node("encoder")
    rate = rospy.Rate(99) # 10hz

    while not rospy.is_shutdown():
	encoder_buffer = ""
	rwheel_buffer = ""
        lwheel_buffer = ""
	isRight = True
	i = 0
	while True:
		i = i + 1
		encoder_ticks = ser.read()
		#message = "r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";"
		#print(message)
		#ser.write(message.encode())
		print("t: ", i, " ", encoder_ticks)
		if len(encoder_ticks) > 0:
			#print("t: ", i, " ", encoder_ticks)
			if (encoder_ticks is 'r'):
				isRight = True
			elif (encoder_ticks is 'l'):
				isRight = False
			elif (unicode(encoder_ticks, 'utf-8').isnumeric()):
				if (isRight):
					rwheel_buffer = rwheel_buffer + encoder_ticks	
				else:
					lwheel_buffer = lwheel_buffer + encoder_ticks	
			elif (encoder_ticks is ';'):
				right_data = int(rwheel_buffer)
				left_data = int(lwheel_buffer)
				if (left_data > left_data_old):
					lwheel_pub.publish(Int16(left_data))
					left_data_old = int(lwheel_buffer)
				
				if (right_data > right_data_old):
					rwheel_pub.publish(Int16(right_data))
					right_data_old = int(rwheel_buffer)
				
				rwheel_buffer = ""
				lwheel_buffer = ""
				rate.sleep()

if __name__ == '__main__':
    try:
	talker()
    except rospy.ROSInterruptException:
        pass

