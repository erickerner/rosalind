; [http://rosalind.info/problems/fib/]

(defvar *terms*
	'(
		(0 . 0)
		(1 . 1)
		(2 . 1)
	)
)

(defun fib (n k)
	(if (< n 0)
		nil
		(let ((term (cdr (assoc n *terms*))))
			(when (null term)
				(setf term (+ (fib (- n 1) k) (* k (fib (- n 2) k))))
				(push (cons n term) *terms*))
			term
		))
)

(defun main ()
	(princ
		(fib (parse-integer (nth 0 *args*)) (parse-integer (nth 1 *args*)))
	)
)

(main)
