; кубический корень
; Метод Ньютона для кубических корней основан на том, что если y является приближением к кубическому корню из x, 
; то мы можем получить лучшее приближение по формуле
; (x/y2 + 2y)/3
; С помощью этой формулы напишите процедуру вычисления кубического корня, подобную процедуре для квадратного корня.

(define (qbrt-iter guess x) 
  (if (good-enough? guess x) 
      guess 
      (qbrt-iter (improve guess x) x)
    )
)
(define (good-enough? guess x) 
  (< (abs (- (qube guess) x)) 0.001)
)
(define (qube x) 
    (* x x x)
)
(define (improve guess x) 
  (/ (+ (/ x (square guess)) 
        (* 2 guess)) 
     3)
)
(define (square x) 
    (* x x)
)
(define (qbrt x) 
  (qbrt-iter 1.0 x)
)