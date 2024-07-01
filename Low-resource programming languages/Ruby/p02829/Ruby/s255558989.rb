def function(a, b)
	array = [1, 2, 3]
	array.delete(a)
	array.delete(b)
	array[0]
end

a = gets.chomp.to_i
b = gets.chomp.to_i
puts function(a, b)
