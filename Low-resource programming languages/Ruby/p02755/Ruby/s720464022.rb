def function(a, b)
	min_a = a / 0.08
	max_a = (a + 1) / 0.08 - 1
	range_a = min_a...max_a
	min_b = b / 0.1
	max_b = (b + 1) / 0.1
	range_b = min_b...max_b
	return -1 if !range_a.member?(min_b) && !range_a.member?(max_b)

	(min_a.to_i > min_b.to_i) ? min_a.to_i : min_b.to_i
end

a, b = gets.chomp.split.map(&:to_i)
puts function(a, b)
