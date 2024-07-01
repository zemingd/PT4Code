STDIN.each do |value|
	value =~ /^(\d+) (\d+)$/
	sum = $1.to_i + $2.to_i
	puts sum.to_s.length
end