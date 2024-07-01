n = gets.to_i
(0...n).each do |x|
	a = gets.to_i
	b = gets.to_i
	c = a+b
	ans = (c.to_s.length > 80) ? "overflow" : c
	p ans
end