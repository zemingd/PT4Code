a, b = gets.split.map(&:to_i)
cnt = 0
for i in a..b
	if(i / 10000 == i % 10)then
		if((i / 1000)% 10 == (i / 10) % 10)then
			cnt += 1
		end
	end
end
puts cnt