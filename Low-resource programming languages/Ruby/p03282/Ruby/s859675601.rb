s = gets.chomp
k = gets.to_i


if k > 5 * (10 ** 15) && s[0] == '1'
	puts s[1]
else
	puts s[0]
end