; [http://rosalind.info/problems/dna/]

(defun inc (x) (+ x 1))

(defun count-nucleotides (xs)
	(let ((as 0) (cs 0) (gs 0) (ts 0))
		(dotimes (i (length xs))
			(let ((b (subseq xs i (inc i))))
				(cond
					((equal b "A") (incf as))
					((equal b "C") (incf cs))
					((equal b "G") (incf gs))
					((equal b "T") (incf ts)))))
		(format t "~d ~d ~d ~d" as cs gs ts))
)

(defun main ()
	(count-nucleotides (car *args*))
)

(main)
