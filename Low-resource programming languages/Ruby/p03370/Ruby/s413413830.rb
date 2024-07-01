n, x = gets.split.map(&:to_i)
min = 1000000
n.times do
	m = gets.to_i
	x -= m
	min = m if min > m
end

x /= min
puts n + x