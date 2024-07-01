loop do
	a = gets.split.map(&:to_i)
	if a == nil then break end
	sum = a[0] + a[1]
	puts sum.length
end