imput = gets.chomp.split("\s")
p imput

unless imput == []
	a, b = imput[0].to_i, imput[1].to_i
	sum = a + b
	puts sum.to_s.length
	
	imput = gets.chomp.split("\s")
end