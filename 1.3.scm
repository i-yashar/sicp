(define (f a b c)
  (cond ((and (> a c) (> b c)) (+ (* a a) (* b b)))
        ((and (> b a) (> c a)) (+ (* b b) (* c c )))
        ((and (> a b) (> c b)) (+ (* a a) (* c c )))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (sum-of-squares a b)
  (+ (* a a)
     (* b b)))

(define (first-two-larger a b c)
  (and (> a c) (> b c)))

(define (f a b c)
  (cond ((first-two-larger a b c) (sum-of-squares a b))
        ((first-two-larger b c a) (sum-of-squares b c))
        (else (sum-of-squares a c))))