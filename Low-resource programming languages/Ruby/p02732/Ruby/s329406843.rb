N,*A = $<.read.split.map(&:to_i)
B = [0]*(N+1)
A.each{|a|
	B[a] += 1
}
C = B.select{|b| 0<b }.map{|b| b*(b-1)/2 }.inject(1,:+)
p *A.map{|a|
	C-B[a]
}
