; Определите процедуру, которая принимает в качестве аргументов три числа и 
; возвращает сумму квадратов двух б´ольших из них.

; 1
(define (>= x y) (not (< x y)))
(define (sum-square x y) (+ (* x x) (* y y)))
(define (sum-of-two-big x y z)
  (if (>= x y) 
    (if (>= y z) (sum-square x y) (sum-square x z))
    (if (>= x z) (sum-square y x) (sum-square y z))
  )
)

; 2
(define (square a) (* a a))
(define (sum-square x y) (+ (square x) (square y)))
(define (sum-of-biggest-squares a b c)
  (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
        ((and (>= a b) (>= c b)) (sum-of-squares a c))
    (else (sum-of-squares b c)))
)

; 3
(define (sum-of-biggest-squares a b c)
  (sum-of-squares (max a b) (max (min a b) c))
)

; 4
(define (square a) (* a a))
(define (f a b c)
  (+ (square a)
     (square b)
     (square c)
     (- (square (min a b c))))
)

; 5
(define (square x) (* x x))
(define (sum-square x y) (+ (square x) (square y)))
(define (is-first-small x y z) (and (<= x y) (<= x z)))
(define (sum-square-large-args x y z) 
  (cond ((is-first-small x y z) (sum-square y z))
        ((is-first-small y x z) (sum-square x z))
        ((is-first-small z y x) (sum-square x y))
  )
)