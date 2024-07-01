def function(a, b)
	min_a = a / 0.08
	max_a = (a + 1) / 0.08
	range_a = (min_a.ceil)...max_a
	min_b = b / 0.1
	max_b = (b + 1) / 0.1
	range_b = (min_b.ceil)...max_b
	return -1 if !range_a.member?(min_b.ceil) && !range_b.member?(min_a.ceil)

	(min_a.ceil > min_b.ceil) ? min_a.ceil : min_b.ceil
end

a, b = gets.chomp.split.map(&:to_i)
puts function(a, b)
