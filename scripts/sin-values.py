from math import *

#join_point = 0.50474
#join_point = 0.818999999999
join_point = 0.9039999999999335
#join_point = pi/4

#join_height = cos(join_point)
join_height = 0.8458070762631025

print "section 1:"
start_x = -pi/2
start_y = -1
end_x = -join_point
end_y = -join_height
dx = end_x - start_x
dy = end_y - start_y
slope = dy/dx
print str(start_y + -slope * start_x) + " + " + str(slope) + " * angle;"

print "section 2:"
start_x = -join_point
start_y = -join_height
end_x = join_point
end_y = join_height
dx = end_x - start_x
dy = end_y - start_y
slope = dy/dx
print str(start_y + -slope * start_x) + " + " + str(slope) + " * angle;"

print "section 3:"
start_x = join_point
start_y = join_height
end_x = pi/2
end_y = 1
dx = end_x - start_x
dy = end_y - start_y
slope = dy/dx
print str(start_y + -slope * start_x) + " + " + str(slope) + " * angle;"
