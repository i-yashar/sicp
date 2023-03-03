(define (pascals-triangle row col)
  (if (is-base-case? row col)
      1
      (+ (pascals-triangle (- row 1) (- col 1))
         (pascals-triangle (- row 1) col))))
         
(define (is-base-case? row col)
  (or (= row col) (= col 1)))