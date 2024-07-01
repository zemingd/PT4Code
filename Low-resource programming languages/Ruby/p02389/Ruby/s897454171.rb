class Rectangle
	def area(vertical,width)
		area_val = vertical * width
		print "#{area_val} "
	end

	def area_length(vertical,width)
		area_length_val = 2 * (vertical + width)
		print "#{area_length_val}"
	end
end

input = gets.split.map(&:to_i)

if input.length == 2 
	rectangle = Rectangle.new
	rectangle.area(input[0],input[1])
	rectangle.area_length(input[0],input[1])
else
	puts "You must input only two parameter"
end