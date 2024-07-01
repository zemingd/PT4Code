while true
	input = gets.split(" ")
	input[0] = input[0].to_i
	input[1] = input[1].to_i
	if input[0] == 0 && input[1] == 0
		break 
	end
	result = input.sort
	print result[0], " ", result[1]
	puts
end 