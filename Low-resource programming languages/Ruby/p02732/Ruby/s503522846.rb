N,*A = $<.read.split.map(&:to_i)
B = [0]*(N+1)
A.each{|a|
	B[a] += 1
}
C = B.inject(0){|c,b|
	c + b*(b-1)/2
}
A.each{|a|
	b = B[a]
	p C+1-b
}
