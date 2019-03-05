; Newton's Square Root Method


; Define sqrt function to check for the square root of a number which takes a value and a guess

(define (sqrt x)
  (sqrt-iteration guess x)
)


; Define sqrt-iteration function to check if the guess is good, which means
; the absolute value of square of guess - value is less than 0.001

(define (sqrt-iteration guess x)
	(if (good-enough? guess x) guess
		(sqrt-iteration (improve-guess guess x) x
		))
)


; Define good-enough? which checks if a guess is good, which means the absolute
; of vvalue of square of guess - value is less than 0.001

(define (good-enough guess x)
	(< (abs (- (square guess) x)) 0.001))


; Define sqaure function which returns square of a number

(define (square x)
	(* x x)
	)


; Define improve-guess funtion which returns the average of guess and value/guess

(define (improve-guess guess x)
	(average guess (/ x guess))
	)


; Define the average function which return the average of 2 numbers

(define (average x y )
	(/ (+ x y) 2)
	)
