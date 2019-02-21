#Define a procedure that takes three numbers as arguments and returns 
#the sum of the squares of the two larger numbers.
def square(x):
	return (x * x)

def sum_square_largest(a, b):
	return print((square(a) + square(b)))

def find_largest(a, b, c):
	if a >= b and c >= b:
		return sum_square_largest(a, c)
	elif a >= c and b >= c:
		return sum_square_largest(a, b)
	elif b >= a and c >= a:
		return sum_square_largest(b, c)

n1 = int(input('Enter Number 1: '))
n2 = int(input('Enter Number 2: '))
n3 = int(input('Enter Number 3: '))

find_largest(n1, n2, n3)


#Test case:
#Input: 2, 4, 5
#Output: 41
