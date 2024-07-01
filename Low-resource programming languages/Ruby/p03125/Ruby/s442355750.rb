def test
	a, b = gets.split(" ").map(&:to_i)
	b % a == 0 ? a + b : b - a
end

puts test
