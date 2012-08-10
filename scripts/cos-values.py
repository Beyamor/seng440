from math import *

#join_point = 0.50474
#join_point = 0.818999999999
join_point = 0.6667999999999596
#join_point = pi/4

#join_height = cos(join_point)
join_height = 0.8458048044844768

print "section 1:"
slope = (0 - join_height) / (-pi/2 - -join_point)
print str(0 + -1 * slope * -pi/2) + " + " + str(slope) + " * angle;"

print
print "section 2:"
slope = (1 - join_height) / (0 - -join_point)
print str(join_height + -1 * slope * -join_point) + " + " + str(slope) + " * angle;"

print
print "section 3:"
slope = (join_height - 1) / (join_point - 0)
print str(1 + -1 * slope * 0) + " + " + str(slope) + " * angle;"


print
print "section 4:"
slope = (0 - join_height) / (pi/2 - join_point)
print str(join_height + -1 * slope * join_point) + " + " + str(slope) + " * angle;"
