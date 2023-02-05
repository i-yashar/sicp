(define (sqrt-iter old-guess guess x)
  (cond ((new-good-enough? old-guess guess x) guess)
        (else (sqrt-iter guess (improve guess x) x))))

(define (new-good-enough? guess old-guess x)
  (< (/ (change old-guess guess) old-guess) 0.001))

(define (improve guess x)
  (average (/ x guess) guess))

(define (change x y)
  (abs (- x y)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))