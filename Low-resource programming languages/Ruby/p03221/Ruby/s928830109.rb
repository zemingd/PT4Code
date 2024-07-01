N,M = gets.split.map(&:to_i)

P = [0]*(N+1)
$<.each{|ln|
	p,y = ln.split.map(&:to_i)
	P[p]+=1
}

P.each_with_index{|n,p|
	next if n == 0
	n.times{|x|
		puts '%06d%06d'%[p,x+1]
	}
}
