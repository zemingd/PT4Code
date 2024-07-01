x = gets
cnt = 0
while true
	input = gets.split(" ")
	if input[0] == "END_OF_TEXT"
		break
	end
	input.size.times do |i|
		if x == input[i]
			cnt = cnt + 1
		end
	end
end
puts cnt