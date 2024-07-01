$<.each_line do |line|
	h, w = line.split.map(&:to_i)
	break if h.zero? && w.zero?

	print ('#' * w + "\n") * h + "\n"
end