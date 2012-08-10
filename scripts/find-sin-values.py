from math import *
import operator

def line_y(from_x, from_y, to_x, to_y, x):
	return from_y + (to_y - from_y) / (to_x - from_x) * (x - from_x)

def my_sin(x, join_point, join_height):

	if x >= -pi/2 and x <= -join_point:
		return line_y(-pi/2, -1, -join_point, -join_height, x)
	elif x >= -join_point and x<= join_point:
		return line_y(-join_point, -join_height, join_point, join_height, x)
	else:
		return line_y(join_point, join_height, pi/2, 1, x)

errors = {}
test_join_point = 0.3
while test_join_point < pi/2:
	test_join_height = sin(test_join_point)
	while test_join_height < 1:
		error = 0
		angle = -pi/2
		while angle < pi/2:
			error += abs((sin(angle) - my_sin(angle, test_join_point, test_join_height)) / sin(angle))
			angle += pi/100
		errors[(test_join_point, test_join_height)] = error
		test_join_height += 0.01
	test_join_point += 0.0001

print min(errors, key=errors.get)
