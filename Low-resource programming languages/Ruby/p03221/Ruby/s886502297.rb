n,m=gets.chomp.split.map(&:to_i)
p=Array.new(m)
y=Array.new(m)
m.times{|i|
	p[i],y[i]=gets.chomp.split.map(&:to_i)
}
y_s=y.sort
r=Array.new(m, 0)
c=Array.new(m, 1)
m.times{|i|
	j=y.index(y_s[i])
	r[j] = c[p[j]]
	c[p[j]] += 1
}
m.times{|i|
	puts(p[i].to_s.rjust(6, "0") + r[i].to_s.rjust(6, "0"))
}