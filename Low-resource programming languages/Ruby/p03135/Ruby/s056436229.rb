def test
	t, x = gets.split(" ").map(&:to_i)
	t / x.to_f
end

puts test
