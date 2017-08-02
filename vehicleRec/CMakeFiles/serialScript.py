#py
import serial
import time
from time import sleep

#define port
interface = '/dev/ttyACM'
usbStr = '0'
usbNum = 0
num = 5
notOpened = True

ser = serial.Serial('/dev/ttyACM2', 9600)

while(notOpened == True):
	try:
		usbStr = str(usbNum)
		ser = serial.Serial('/dev/ttyACM' + usbChar, 9600)
	except:
   		usbNum = usbNum + 1
		notOpened = False
	

#read and send angle
while(num == 5):
    readFile  = open("/home/pi/vehicleRec/angles.txt", "r")
    angle = readFile.readline()
    print angle
    ser.write(angle)
    for x in range(0, 500000):
	x = x
    

