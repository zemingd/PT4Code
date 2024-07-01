s = gets
ans = 700
i = 0

3.times do
	ans += 100 if s[i] == "o"
	i += 1
end

puts ans
