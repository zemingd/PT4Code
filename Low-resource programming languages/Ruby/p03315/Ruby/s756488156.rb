s = gets
ans = 0
i = 0

4.times do
	if s[i] == "+"
		ans += 1
	else
		ans -= 1
	end
	i += 1
end

puts ans