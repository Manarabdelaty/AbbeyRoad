# Import Twisted mainloop
    
from twisted.internet import reactor

import time
    
# Import this package objects
    
from sysfs.gpio import Controller, OUTPUT, INPUT, RISING, BOTH

# Refer to your chip GPIO numbers and set them this way

# GPIO pins on Carriet:  7, 8, 9 , 10
Controller.available_pins = [388, 298,480, 486]


def pin_changed(pin, state):
	if (state==1):
		print("Magent Detected")
	else:
		print("Magnet Not Detected")
#d0 = Controller.alloc_pin(388, INPUT)

d0 = Controller.alloc_pin(388, INPUT, pin_changed, BOTH)
reactor.run()
#while True:
	#if(d0.read() == 1):
#		print("Magent Detected")
#	else:
#		print("Magnet Not Detected")
	#print(d1.read())
	#print(d2.read())
	#print(d3.read())




