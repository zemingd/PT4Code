n = gets.to_i
s = gets.chomp

c = 0
i = 0
while i < n
	j = i + 1;
	while s[i] == s[j]
		j = j + 1
	end
	c = c + 1
	i = j
end
print c