while line = gets
	num = line.split("\s")
	a,b = num[0].to_i,num[1].to_i
	p (a+b).to_s.size
end