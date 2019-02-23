# Exercise 1.4.
# Observe that our model of evaluation allows for combinations whose operators are compound expressions.
# Use this observation to describe the behavior of the following procedure:

# (define (a-plus-abs-b a b)
# ((if (> b 0) + -) a b))

def a_plus_abs_b (a, b):
    if b > 0:
        return a + b
    elif b <= 0:
        return a - b
print(a_plus_abs_b(a, b))

#Test case
# a_plus_abs_b(1, 3) => 4
# a_plus_abs_b(3, -3)=> 4
