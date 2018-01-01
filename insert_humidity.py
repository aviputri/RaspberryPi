import grovepi
import math
import time

sensor = 4

blue = 0
white = 1

[temp, humidity] = grovepi.dht(sensor, white)

print("%.02f" % (humidity))
