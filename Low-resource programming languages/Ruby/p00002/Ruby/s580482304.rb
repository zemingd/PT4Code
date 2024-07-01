STDIN.each_line do |line|
	sum = 0
	line.split(" ").each{|n| sum += n.to_i}
	p sum.to_s.length
end