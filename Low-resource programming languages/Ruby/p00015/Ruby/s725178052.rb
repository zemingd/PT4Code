n = gets.to_i
n.times do
	a = gets.to_i
	b = gets.to_i
	c = a + b
	if (Math.log10(c) > 80) then puts("overflow") end
	puts c
end