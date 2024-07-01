imput = gets.chomp.split("\s")
a, b = imput[0].to_i, imput[1].to_i

until a == 0 || b == 0
	sum = a + b
	puts sum.to_s.length
	
	imput = gets.chomp.split("\s")
	a, b = imput[0].to_i, imput[1].to_i
end