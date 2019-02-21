
# Exercise 1.1:  
# Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? 
# Assume that the sequence is to be evaluated in the order in which it is presented.


print (5 + 3 + 4)

print (9 - 1)

print (int(6 / 2))

print ((2 * 4) + (4 - 6))

a = 3
print ('Value: ', a)

b = (a + 1)
print ('value: ', b)

print ((a)+(b)+(a * b))

print(bool(a == b))


if b > a and b < (a * b):
	print(b)
else:
	print(a)


if a == 4:
	print (6)
if b == 4:
	print (6 + 7 + a)
else:
	print(25)


if b > a:
	print (2 + b)
else:
	print (2 + a)


if a > b:
	print (a * (a + 1))
if a < b:
	print (b * (a + 1))
else:
	print (-1 * (a + 1))

# ; Solution:

# ; 10
# ; 12
# ; 8
# ; 3
# ; 6
# ; Value: a
# ; Value: b
# ; 19
# ; #f
# ; 4
# ; 16
# ; 6
# ; 16