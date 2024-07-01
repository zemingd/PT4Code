def check(a, b)
	return 0 if a <= 5
	return (b / 2).to_i if 6 <= a && a <= 12
	return b
end
a,b = gets.split.map(&:to_i)
puts check(a,b)