while input=gets
	inputs=input.chomp.split(" ")
	a=inputs[0].to_i
	b=inputs[1].to_i
	sum=a+b
	p(sum.to_s.size)
end
