a , b, c = gets.split
numbers = [a.to_i, b.to_i, c.to_i]
numbers.sort!
numbers.each do |x| 	
	print x," "
end
print "\n"