$<.each_line do |line|
	a, op, b = line.split
	break if op == '?'

	p a.to_i.send(op, b.to_i)
end