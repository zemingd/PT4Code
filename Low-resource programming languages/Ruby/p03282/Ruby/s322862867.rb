s = gets.chomp
k = gets.to_i


if s[0] == '1'
	i = 1
	while s[i] == '1'
		i += 1
	end
	puts s[i]
else
	puts s[0]
end