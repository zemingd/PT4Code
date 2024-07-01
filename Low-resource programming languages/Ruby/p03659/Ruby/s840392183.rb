n = gets.to_i
a = gets.split.map &:to_i
sum = a.inject:+
ans = 1e10
s = 0
(0..n-2).each{|i|
	s += a[i]
	ans = [ans, (2*s-sum).abs].min
}
p ans