n=gets.to_i
m=100000
n.times{
	m = m * 105 / 100
	m = (m+999) / 1000 * 1000
}
puts(m)