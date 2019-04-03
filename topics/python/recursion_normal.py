# Implementation for normal recursion

# defining a function recSum to add the sum of n natural numbers
def recSum (x):
    if x == 1:
        return 1
    else:
        # returning the current number + number -1
        return x + recSum(x-1)

# calling the function and printing it
print(recSum(5))
