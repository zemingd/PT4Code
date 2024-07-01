while num_input = STDIN.gets
	array = num_input.chomp.split("\s")
	sum = array[0].to_i + array[1].to_i
	p sum.to_s.length
end