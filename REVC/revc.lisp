; [http://rosalind.info/problems/rna/]

(defun inc (x) (+ x 1))

(defun complement-dna (dna)
	(let ((rna))
		(dotimes (i (length dna))
			(let ((b (subseq dna i (inc i))))
				(cond
					((equal b "A") (princ 'T))
					((equal b "C") (princ 'G))
					((equal b "G") (princ 'C))
					((equal b "T") (princ 'A)))))
	)
)

(defun main ()
	(complement-dna (reverse (car *args*)))
)

(main)
