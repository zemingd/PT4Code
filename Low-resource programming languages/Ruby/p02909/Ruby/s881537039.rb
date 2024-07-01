n = gets.to_i
s = gets.chomp

results = [0]
i = 0
j = 1
while i < n
	while j < n - i
		tmp = s[i, j]
		if tmp.length < results.max
			next
		end
		if 2 > s.scan(/#{tmp}/).length
			break
		end
		results.push(tmp.length)
		j = j + 1
	end
	i = i + 1
end
print(results.max)