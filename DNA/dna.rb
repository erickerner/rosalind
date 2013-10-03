# [http://rosalind.info/problems/dna/]

dna = ARGV[0]
count = Hash.new(0)

dna.split('').each {|nt| count[nt] += 1}

print count['A'], ' ', count['C'], ' ', count['G'], ' ', count['T'], "\n"
