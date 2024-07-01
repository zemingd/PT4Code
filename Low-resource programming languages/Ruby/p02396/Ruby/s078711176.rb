input = gets.strip().to_i
i = 1

until input == 0
	puts "Case #{i}: #{input}"
	i += 1
	input = gets.strip().to_i
end
