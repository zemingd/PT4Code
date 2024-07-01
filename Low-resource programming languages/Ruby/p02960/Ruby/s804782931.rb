S = gets.chomp
k, m = 1, [1]+[0]*12
S.each_char.reverse_each{|c|
	n = [0]*13
	(c == ?? ? 0..9 : [c.ord-?0.ord]).each{|d|
		j = d*k%13
		13.times{|i|
			n[i] += m[i-j]
		}
	}

	k, m = k*10, n.map{|_|_%1000000007}
}
p m[5]
