x = gets().to_i
a = gets().to_i
b = gets().to_i

x = x - a
while x >= b
	x = x - b
end 
puts(x)