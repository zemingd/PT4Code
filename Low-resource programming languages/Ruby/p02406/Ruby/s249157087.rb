a = gets.to_i
for num in 1..a
	if num.to_s =~ /3/ || num % 3 == 0
		print " #{num}"
	end
end
puts