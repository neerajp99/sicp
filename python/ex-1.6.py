# Newton's Square root of successive approximations.

#Define the function to call square root of a number
def newtonSqrt(n):
	return sqrtIteration(1.0, n)

#Find the square roor using a guess and the value
def sqrtIteration(guess, x):
	if goodEnough(guess, x) == True:
		print(int(guess))
	elif sqrtIteration(guessImprove(guess, x), x):
		return x
#Function to find the square of a number
def square(x):
	return (x * x)

#Check if the guess is close to the exact square root
def goodEnough(guess, x):
	 return (abs(square(guess) - x) < 0.001)

#If a guess is not the square root, improve it
def guessImprove(guess, x):
	return average(guess, (x/guess))

#Function to find the average of 2 numbers
def average(x, y):
	return (x+y)/2

#Take input from the user whose square is to be find
input = int(input('Enter number to check: '))

#Calling the function to get our square root
newtonSqrt(input)



#Another method for finding square root
# def newtonSqrt(n):
# 	    approx = 0.5 * n
# 	    better = 0.5 * (approx + n/approx)
# 	    while better != approx:
# 	        approx = better
# 	        better = 0.5 * (approx + n/approx)
# 	    return approx
# print(newtonSqrt(9))
