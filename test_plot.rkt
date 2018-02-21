#lang racket
(require plot)
(define (getnum m n)
  (map string->number (map n (map string-split m))))
(define (plotDFF fn)
  (let* ([flines (file->lines fn)]
         [header (string-split (first flines))]
         [nummatrix (rest flines)]
         [ttt (getnum nummatrix last)]
         [dff (getnum nummatrix sixth)])
    (plot (lines (map vector ttt dff)))))