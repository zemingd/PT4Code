a , b, c = gets.split.map(&:to_i)
numbers = [a, b, c]
numbers.sort!
numbers.each do |x| 	
	print x," "
end
print "\n"