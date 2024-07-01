n = gets.to_i
result = []
for i in 0..n-1
	input = gets.to_i
	unless result.delete(input)
		result.push(input)
	end
end
puts result.size
