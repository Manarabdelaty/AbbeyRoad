#!/usr/bin/env python
# license removed for brevity
import serial

with serial.Serial('/dev/ttyS0', 9600, timeout=10) as ser:  # open serial port
    while True:
	ser.write(b'hhhhhhhhhhhhhhhhhi')




