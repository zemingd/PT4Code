def function(a, b)
	s_a = (0...a).map { |_| b.to_s }.join
	s_b = (0...b).map { |_| a.to_s }.join
	s_a <= s_b ? s_a : s_b
end

a, b = gets.chomp.split.map(&:to_i)
puts function(a, b)
