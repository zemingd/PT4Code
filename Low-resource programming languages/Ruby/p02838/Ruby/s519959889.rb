N,*A = $<.read.split.map(&:to_i)
M, B = 10**9+7, [0]*60

A.each{|a|
	60.times{|b|
		B[b]+=1 if a[b]==1
	}
}
p 59.downto(0).inject(0){|s,b|
	(s*2 + B[b]*(N-B[b])) % M
}
