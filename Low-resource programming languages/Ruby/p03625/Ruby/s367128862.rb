n = gets.to_i
input = gets.chomp.split(" ").map(&:to_i)
input.sort!.reverse!
result = []
foo = 0
for i in 0..n-1
	if input[i] == input[i+1]
		result.push(input[i])
		input.delete_at(i)
		input.delete_at(i+1)
		foo += 1
		if foo == 2
			break
		end
		next
	end
end
if result.size >= 2
	puts result[0]*result[1]
else
	puts 0
end
