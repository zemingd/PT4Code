STDIN.each_line do |line|
	p line.split.map(&:to_i).inject(&:+).to_s.size
end