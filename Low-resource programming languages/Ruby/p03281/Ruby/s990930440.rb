n = gets.to_i
ans = 0;
for i in 1..n do
	cnt = 0;
	for j in 1..i do
		if(n % j == 0)then
			cnt += 1;
		end
	end
	if(cnt == 8)then
		ans += 1;
	end
end
puts ans
