n = gets.to_i
i = 1
j = 1
count = 0
ans = 0
while j <= n do
	count = 0
	while i <= n/2 do
		if j % i == 0
			count = count + 1
		end
		i = i + 2
	end
	if count + 1 == 8
		ans = ans + 1
	end
	j = j + 1
end
p ans

