; Alyssa P. Hacker doesn’t see why if needs to be provided as a special form.
; ‘‘Why can’t I just define it as an ordinary procedure in terms of cond?’’
; she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:


; (define (new-if predicate then-clause else-clause)
;   (cond (predicate then-clause)
;         (else else-clause)))


; Eva demonstrates the program for Alyssa:
; (new-if (= 2 3) 0 5)
; 5

; (new-if (= 1 1) 0 5)
; 0


; Delighted, Alyssa uses new-if to rewrite the square-root program:
; (define (sqrt-iter guess x)
;   (new-if (good-enough? guess x)
;           guess
;           (sqrt-iter (improve guess x)
; x)))


; What happens when Alyssa attempts to use this to compute square roots? Explain.



;###############################################################
; Normal approach to Newton's Square Root Method
;###############################################################

; Define sqrt function to check for the square root of a number which takes a value and a guess

(define (sqrt x)
  (sqrt-iteration 1.0 x)
)


; Define sqrt-iteration function to check if the guess is good, which means
; the absolute value of square of guess - value is less than 0.001

(define (sqrt-iteration guess x)
	(if (good-enough? guess x) guess
		(sqrt-iteration (improve-guess guess x) x
		))
)


; Define good-enough? which checks if a guess is good, which means the absolute
; of value of square of guess - value is less than 0.001

(define (good-enough? guess x)
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

;###############################################################
; Program that uses Alyssa's approach for square roots:
;###############################################################

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iteration-new guess x)
	(new-if (good-enough? guess x) guess
		(sqrt-iteration (improve-guess guess x) x
		))
)

(define (sqrt-new x)
  (sqrt-iteration-new 1.0 x)
 )
