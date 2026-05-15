(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cadar x) (car (cdr (car x))))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  ;; BEGIN PROBLEM 15 - siddharth ghosh (main)
  (define (helper lst index)
    (if (null? lst)
        '()
        (cons
          (list index (car lst))
          (helper (cdr lst) (+ index 1)))))

  (helper s 0)
  )
  ;; END PROBLEM 15 - siddharth ghosh (main)


;; Problem 16
;; merge question
;; START PROBLEM 16 - siddharth ghosh
(define (merge ordered? lst1 lst2)

  (cond
    ((null? lst1) lst2)

    ((null? lst2) lst1)

    ((ordered? (car lst1) (car lst2))
      (cons
        (car lst1)
        (merge ordered? (cdr lst1) lst2)))

    (else
      (cons
        (car lst2)
        (merge ordered? lst1 (cdr lst2))))))

  ;; END PROBLEM 16 - siddharth ghosh
