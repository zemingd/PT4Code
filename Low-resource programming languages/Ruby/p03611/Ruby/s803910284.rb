n = gets.to_i
inputs = gets.chomp.split(" ").map { |n| n.to_i } # [3 ,1 ,4 ,1 ,5 ,9 ,2]
result = Array.new(inputs.max+5,0)

for i in 0..n-1
	result[inputs[i]] += 1
	result[inputs[i]+1] += 1
	result[inputs[i]+2] += 1
end
puts result.max

