const = 5 * (10 ** 15)
s = gets.chop
k = gets.chop.to_i

num_chars = s.chars.map(&:to_i)

selected = 0
current_number_of_char = 0
i = 0
found = 0

while found == 0 && i <= num_chars.length - 1
	current_number_of_char += num_chars[i] ** const
	
	if k <=  current_number_of_char
		selected = num_chars[i]
		found = 1
	end
	
	i += 1
end

puts selected