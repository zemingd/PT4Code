while line = gets
	num = line.split("\s")
	sum = num[0].to_i + num[1].to_i
	leng = sum.to_s.length
	puts "#{leng}"
end