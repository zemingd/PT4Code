N,*A = $<.read.split.map(&:to_i)
M = 10**9+7

bc = 60.times.map{|b|
	A.count{|a| a[b]==1 }
}
p 60.times.inject(0){|s,b|
	(s + bc[b]*(N-bc[b])*(1<<b)) % M
}
