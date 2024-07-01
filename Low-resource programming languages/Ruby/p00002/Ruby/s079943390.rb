include Math

loop do
	in1 = gets
	in2 = gets
	break if (in1 == "\n") || (in2 == "\n")
	a = in1.to_i
	b = in2.to_i
	p log10(a + b + 1).ceil	
end