; [http://rosalind.info/problems/1a/]

#lang racket

(define (kmers text k)
  (let ((i 0) (H (make-hash)))
    ; Count kmers
    (let loop ()
      (unless (>= (+ i k) (string-length text))
        (let ((s (substring text i (+ i k))))
          (hash-set! H s (if (hash-has-key? H s) (+ (hash-ref H s) 1) 1))
          (set! i (+ i 1))
          (loop))))
    ; Collect kmers with max count
    (let ((maxcount (car (sort (hash-values H) >))) (ret '()))
      (for ((x (hash-keys H)))
        (unless (< (hash-ref H x) maxcount)
          (set! ret (append ret (list x)))))
      ; Print result in format expected for upload
      (for ((x ret))
        (printf "~a " x))
      (printf "\n"))))
