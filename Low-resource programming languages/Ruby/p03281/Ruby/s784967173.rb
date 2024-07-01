n = gets.to_i
i = 1
count = 0
ans = 0
while j <= n do
	count = 0
	while i <= n/2 do
		i += 2
		if n % i == 0
			count++
		end
	end
	if count + 1 == 8
		ans++
	end
end
