n = gets.to_i

n.times do
	a = gets.to_i
	b = gets.to_i

	if (10 ** 81) < (a + b)
		puts "overflow"
	else 
		puts (a + b)
	end
end