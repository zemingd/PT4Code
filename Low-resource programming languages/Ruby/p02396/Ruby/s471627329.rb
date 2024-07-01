class PrintTestCases
	def show_cases(number)
		number.each.with_index(1) do |val,index|
			puts "Case #{index}: #{val}"
		end
	end
end

input = Array.new
while line = gets
	break if line.to_i == 0
	input.push(line.to_i)
end

PrintTestCases.new.show_cases(input)