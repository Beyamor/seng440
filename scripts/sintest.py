import math
def sine_new(x):
	if(x < -0.9 and x >= -math.pi/2):
		return 0.323009*x - 0.492619
	elif(x >= -0.9 and x <= 0.9):
		return 0.870363*x
	elif(x > 0.9 and x <= math.pi/2):
		return 0.323009*x + 0.492619
	else:
		print "Error. Bad number moron"

x = -math.pi/2
while(x < math.pi/2):
	a1 = math.sin(x)
	a2 = sine_new(x)
	error = math.fabs(a1-a2)/(a1) * 100
	print str(error) + "%" + " " + str(a1) + " " + str(a2) + " " + str(x)
	x += 0.01

