n = gets.to_i
d = gets.chomp.split(" ").map(&:to_i);

sum = 0
i = 0
len = d.length
while i < len
	j = i + 1;
	while j < len
		sum = sum + d[i] * d[j]
		j = j + 1
	end
	i = i + 1
end
print sum