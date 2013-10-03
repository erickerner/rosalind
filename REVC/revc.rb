# [http://rosalind.info/problems/revc/]

complement_map = {A: 'T', T: 'A', C: 'G', G: 'C'}

dna = ARGV[0]
complement = dna.chars

complement.each_with_index do |base,i|
	complement[i] = complement_map[base.to_sym]
end

puts complement.reverse.join("")
