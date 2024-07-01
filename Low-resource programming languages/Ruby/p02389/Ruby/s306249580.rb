def squareArea(x, y)
	return x * y
end
def squareSide(x, y)
	return (x * 2) + (y * 2)
end

input = gets.chomp
a, b = input.split(' ').map(&:to_i)

puts sprintf('%d %d', squareArea(a, b), squareSide(a, b))