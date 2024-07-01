c = 0
loop do
	c += 1
	data = gets
	p data.split
	if data.size == 1 or c == 200
		break
	end
	a = data[0].to_i
	b = data[2].to_i
	ans = a + b
	ans = ans.to_s
	ans.split("")
	puts ans.size
end