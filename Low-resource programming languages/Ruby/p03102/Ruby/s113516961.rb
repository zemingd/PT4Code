N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = []
N.times{ A << gets.split.map(&:to_i)}
x = 0

N.times{|i|
  	count = 0
	M.times{|j|
  		count += B[j]*A[i][j]
    }
  	x += 1 if count + C > 0
}

puts x
