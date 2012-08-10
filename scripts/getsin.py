import math

def getMid(p):
	return (math.sin(p)/p)

def getA(x1, y1, x2, y2):
	return (y1-y2)/(x1-x2)

def getB(x, y, a):
	return y - x*a

point = 0.7

mid = getMid(point)
a = getA(point, math.sin(point), math.pi/2, 1)
b = getB(point, math.sin(point), a)

print "y = " + str(mid) + "x"
print "y = " + str(a) + "x + " + str(b)
print "y = " + str(a) + "x - " + str(b)


	
