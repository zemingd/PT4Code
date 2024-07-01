def test
	n = gets.to_i
	cnt = 0
	n.times do |i|
		arr = i.to_s.split("")
		# p arr
		next if arr.any? { |e| %w(0 1 2 4 6 8 9).include?(e) }
		cnt += 1 if %w(3 5 7).all? { |e| arr.include?(e) }
	end
	cnt
end

puts test
