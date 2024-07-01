loop do
	a = gets.split.map(&:to_i)
	cnt, sum = [1, 0]
	sum = a[0] + a[1]
	while (sum = sum / 10) > 0
		cnt = cnt + 1
	end
	puts cnt
end