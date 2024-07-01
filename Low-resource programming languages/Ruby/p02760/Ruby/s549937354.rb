A = 3.times.map{ gets.split }
N = gets.to_i
B = {}
$<.each{|ln| B[ln.chomp] = true }

puts (3.times.any?{|i|
	3.times.all?{|j|
		B[A[i][j]]
	}
} or 3.times.any?{|j|
	3.times.all?{|i|
		B[A[i][j]]
	}
} or 3.times.all?{|ij|
	B[A[ij][ij]]
} or 3.times.all?{|_|
	B[A[2-_][_]]
}) ? 'Yes' : 'No'
