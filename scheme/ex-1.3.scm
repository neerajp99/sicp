; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x)) ; This function will return the square of the input number
(define (sum-square-largest a b) (+ (square a) (square b))) ; 2 largest numbers are squared and added
(define (find-largest a b c) 
	(cond ((and (>= a b)(>= c b)) (sum-square-largest a c)) ; checks if a and c is greater than b
		  ((and (>= a c)(>= b c)) (sum-square-largest a b)) ; checks if a and b is greater than c
		  ((and (>= b a)(>= c a)) (sum-square-largest b c)))) ; checks if b and c is greater than a 


; Test case:
; Input: (find-largest 2 4 5)
; Output: 41
