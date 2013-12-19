; [http://rosalind.info/problems/rna/]

(defun inc (x) (+ x 1))

(defun transcribe-rna (dna)
	(let ((rna))
		(dotimes (i (length dna))
			(let ((b (subseq dna i (inc i))))
				(cond
					((equal b "T") (princ 'U))
					(t (princ b)))))
		(reverse rna)
	)
)

(defun main ()
	(transcribe-rna (car *args*))
)

(main)
