while str = gets
	a, b = str.split(" ").map(&:to_i)
	puts Math.log10(a + b).ceil
end
