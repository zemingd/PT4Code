n = gets.to_i
input = []
result = 0
for i in 0..n-1
	input.push(gets.to_i)
end
input.sort!

for i in 0..n-1
	if input[i] == input[i+1]
		input.delete_at(i+1)
	else
		result += 1
	end
end
puts result
