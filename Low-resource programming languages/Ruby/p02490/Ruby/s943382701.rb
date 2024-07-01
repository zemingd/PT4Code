STDIN.each_line do |line|
	x, y = line.split.map(&:to_i).sort
	break if x.zero? and y.zero?
	puts "#{x} #{y}"
end