; Linear Iterative Process of Factorial

(define (factorial n) 
	(fact-iter 1 1 n))

(define (fact-iter product counter maximum_count)
	(if (> counter maximum_count)
		product
		(fact-iter (* counter product) (+ counter 1) maximum_count)))