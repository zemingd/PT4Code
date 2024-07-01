s = gets.chomp
k = gets.to_i

i = 0
while s[i] == '1'
	i += 1
end

if k > i
	puts s[i]
else
	puts s[0]
end