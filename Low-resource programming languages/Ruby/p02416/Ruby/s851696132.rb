$<.each_line do |line|
	break if '0' == line.chomp
	p line.split('').map(&:to_i).inject(&:+)
end