def area(a, b)
	a * b
end

def perimeter(a, b)
	2 * (a + b)
end

a, b = gets.split.map {|i| i.to_i}
print area(a, b), " ", perimeter(a, b)