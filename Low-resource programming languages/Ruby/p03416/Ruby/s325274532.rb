start = gets.to_i
finish = gets.to_i

count = 0
for i in start..finish
	tmp = i.to_s
	if tmp == tmp.reverse
		count += 1
	end
end
