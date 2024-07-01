m = 1000010
a = Array.new(m){[]}
(2...m).each{|i|
	if a[i].empty?
		j = i
		while j < m
			a[i] << j
			j += i
		end
	end
}
f = Array.new(m)
gets
d = 0
t = true
gets.split.map(&:to_i).each{|x|
	d = d.gcd(x)
	if t
		a[x].each{|y|
			t &&= !f[y]
			f[y] = true
		}
	end
}

puts (t ? "pairwise coprime" : d == 1 ? "setwise coprime" : "not coprime")
