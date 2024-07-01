STDIN.each_line do |line|
	a, b = line.split.map(&:to_i)

	d, r = a.divmod(b)
	f = a / b.to_f

	puts "%d %d %.5f" % [d, r, f]
end