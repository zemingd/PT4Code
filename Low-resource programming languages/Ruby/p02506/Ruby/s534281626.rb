x = gets
cnt = 0
while input = gets.split(" ")
	input.size.times do |i|
		if x == input[i]
			cnt = cnt + 1
		end
	end
end
puts cnt