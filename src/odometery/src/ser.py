#!/usr/bin/env python
# license removed for brevity
import serial
import rospy

from std_msgs.msg import Int16
from std_msgs.msg import Float32

ser = 0

lwheel_vel = 0
rwheel_vel = 0


lwheel_vel_dac = 0
rwheel_vel_dac = 0

rwheel_flag = False
lwheel_flag = False
left_data_old = 0
right_data_old = 0

left_data_old_turn = 0
right_data_old_turn = 0

dac_min = 80
rwheel_speed = 77
lwheel_speed = 77 #83

rwheel_vel_old = 0
lwheel_vel_old = 0

#def lwheelCallback(msg):
#	global lwheel_vel, rwheel_vel
#	global ser
#
#	lwheel_vel = msg.data + dac_min
#	lwheel_vel = 77
#	lwheel_flag = True
#	print("lwheel: ", lwheel_vel)
#	ser.write(("r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";").encode())

#def rwheelCallback(msg):
#	global ser
#	global rwheel_vel, lwheel_vel
#
#	rwheel_vel = dac_min + msg.data
#	rwheel_vel = 75
#	rwheel_flag = True
#	print("rwheel: ", rwheel_vel)
#	ser.write(("r:"+ str(round(rwheel_vel, 3)) + "l:" + str(round(lwheel_vel, 3)) + ";").encode())



def lwheelCallback(msg):
	global lwheel_vel, rwheel_vel,lwheel_vel_old, lwheel_vel_dac, rwheel_vel_dac
	global ser
	
	lwheel_vel_old = lwheel_vel
	lwheel_vel = msg.data

	#if(lwheel_vel==0):
	#	ratio_lwheel=0
	#else:
	#	ratio_lwheel = abs(lwheel_vel_old - lwheel_vel)/lwheel_vel
	#print('ratio lwheel:', ratio_lwheel)
	
       
	if (lwheel_vel <= 0):
		lwheel_vel_dac = 65
	elif (lwheel_vel == 0): 
		lwheel_vel_dac = 0
	else:
		lwheel_vel_dac = lwheel_speed   #-((lwheel_speed-70)*ratio_lwheel)
	
 	#if(lwheel_vel < 0.2):		
	#	lwheel_vel_dac = 0 

	print("lwheel: ", lwheel_vel_dac)

	ser.write(("r:"+ str(round(lwheel_vel_dac, 3)) + "l:" + str(round(lwheel_vel_dac, 3)) + ";").encode())

def rwheelCallback(msg):
	global lwheel_vel, rwheel_vel, rwheel_vel_old, lwheel_vel_dac, rwheel_vel_dac
	global ser
	rwheel_vel_old = rwheel_vel
	rwheel_vel = msg.data
	if(rwheel_vel==0):
		ratio_rwheel=0
	else:
		ratio_rwheel = abs(rwheel_vel_old - rwheel_vel)/rwheel_vel

	print('ratio rwheel: ', ratio_rwheel)
	#print('rwheel_vel: ', rwheel_vel)
	#print('rwheel_vel_old: ', rwheel_vel_old)

	if (rwheel_vel < 0):
		rwheel_vel = 65
	elif (rwheel_vel == 0):
		rwheel_vel = 0 
	else:
		if (lwheel_vel == 0):
			rwheel_vel_dac =rwheel_speed  #-((rwheel_speed-70)*ratio_rwheel*0.5)
		else: rwheel_vel_dac =rwheel_speed    #-((rwheel_speed-70)*ratio_rwheel)

	#if(rwheel_vel < 0.2):		
	#	rwheel_vel_dac = 0 
	
	print("rwheel: ", rwheel_vel_dac)
	ser.write(("r:"+ str(round(rwheel_vel_dac, 3)) + "l:" + str(round(lwheel_vel_dac, 3)) + ";").encode())

def talker():
    global ser
    global left_data_old
    global right_data_old
    global left_data_old_turn
    global right_data_old_turn


    ser = serial.Serial('/dev/ttyTHS2', 115200, timeout=10)

    lwheel_pub = rospy.Publisher('lwheel', Int16, queue_size=10)
    rwheel_pub = rospy.Publisher('rwheel', Int16, queue_size=10)

    #rospy.Subscriber('rmotor_cmd', Float32 , lwheelCallback)
    #rospy.Subscriber('lmotor_cmd', Float32 , rwheelCallback)
    
    rospy.Subscriber('lwheel_vtarget', Float32 , lwheelCallback)
    rospy.Subscriber('rwheel_vtarget', Float32 , rwheelCallback)

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
					rwheel_buffer = rwheel_buffer + encoder_ticks	# 3ak basma we manar cause we are lazy
				else:
					lwheel_buffer = lwheel_buffer + encoder_ticks	#  3ak basma we manar cause we are lazy
			elif (encoder_ticks is ';'):
				right_data = int(rwheel_buffer)
				left_data = int(lwheel_buffer)
		
				if (abs(abs(left_data_old - left_data) - abs(right_data_old - right_data)) != 1):
					lwheel_pub.publish(Int16(left_data))
					rwheel_pub.publish(Int16(right_data))
					if ((abs(abs(left_data_old - left_data) - abs(right_data_old - right_data)) == 0 )
						or ( (right_data_old != right_data) and (left_data_old != left_data) )):
						left_data_old = int(lwheel_buffer)
						right_data_old = int(rwheel_buffer)
					
					
					#elif (abs(abs(left_data_old - left_data) < abs(right_data_old - right_data))):
					#	stationary=left_data
					#else:
					#	stationary=right_data




				#if(stationary!=left_data or stationary!=right_data):
				#	left_data_old = int(lwheel_buffer)
				#	right_data_old = int(rwheel_buffer)

				rwheel_buffer = ""
				lwheel_buffer = ""
		rate.sleep()

if __name__ == '__main__':
    try:
	talker()
    except rospy.ROSInterruptException:
        pass

