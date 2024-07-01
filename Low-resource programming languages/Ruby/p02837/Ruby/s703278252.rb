N = gets.to_i
M = 2**N - 1
全証言 = N.times.map{|i|
	gets.to_i.times.inject(1<<i){|b,|
		x, y = gets.split.map(&:to_i)
		next b | ((1-y)<<(N+x-1)) | (y<<(x-1))
	}
}
F = lambda{|b|
	c = 全証言.map.with_index{|証言,i| b[i]==1 ? 証言 : 0 }.inject(b, :|)
	next c if (b^c)&M == 0
	next F[c]
}
全証言.map!(&F)
p N.downto(0).find{|i|
	全証言.combination(i).any?{|c|
		c = c.inject(0, :|)
		next (c>>N)&c&M == 0
	}
}
