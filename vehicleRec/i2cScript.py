import smbus
import time
# for RPI version 1, use "bus = smbus.SMBus(0)"
bus = smbus.SMBus(1)

# This is the address we setup in the Arduino Program
address = 0x04

def writeNumber(value):
	print "entered call"
	bus.write_byte(address, value)
	print "CALLED"
# bus.write_byte_data(address, 0, value)
	return -1

def readNumber():
	number = bus.read_byte(address)
# number = bus.read_byte_data(address, 1)
	return number

iVar = 0
dVar = 0

while True:

     readFile  = open("/home/pi/vehicleRec/angles.txt", "r")
     var = readFile.readline()
     print var
         
     try:
	iVar = int(var)
			
     except:
	print "could not CAST"

     try:
	writeNumber(iVar)
     except:
	print "could not write"

     print "RPI: Hi Arduino, I sent you ", iVar
     time.sleep(0.1)
	