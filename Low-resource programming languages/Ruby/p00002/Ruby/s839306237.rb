while a = gets
	x, y = a.chomp!.split.map(&:to_i)
	sum = x + y
	puts sum.to_s.length
end