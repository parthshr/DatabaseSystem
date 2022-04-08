import math
import numpy as np 

centerX = -118.28932225290768
centerY = 34.02120614549488
scalingFactor = 0.0001


nRev = 16
R=8
r=1
a=4
step = 0.1
f = open("spiro.txt", "w")
for t in np.arange(0.00,nRev*math.pi, step):
  output = ""
  x = scalingFactor*((R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)) + centerX
  y = scalingFactor*((R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)) + centerY
  output = str(x)+','+str(y)+"\n"
  f.write(output)
  
  