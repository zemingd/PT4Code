count = gets.chomp.to_i
heights = gets.chomp.split
nowLength = 0
max = 0
(count-1).times do |i|
	i = count - i - 1
	if heights[i - 1].to_i < heights[i].to_i
		nowLength = 0
	else
		nowLength += 1
		if nowLength > max
			max = nowLength
		end
	end
end
puts max