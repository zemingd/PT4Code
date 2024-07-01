m = 100000
gets.to_i.times { |n|
	m += m * 0.05
	m = (m / 1000).ceil * 1000
}
puts m