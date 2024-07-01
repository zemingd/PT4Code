def test
	s = gets.chomp
	ans = 800
	(s.size-2).times do |i|
		diff = (s[i..i+2].to_i - 753).abs
		ans = diff if diff < ans
	end
	ans
end

puts test
