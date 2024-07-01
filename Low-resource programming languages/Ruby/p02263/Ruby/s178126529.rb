OPERATORS = %w(+ - *)
def calculate(reverse_polish)
	stack = []
	elements = reverse_polish.split
	
	elements.each do |el|
		if OPERATORS.include? el
			operands = stack.pop(2)			
			result = operands.reduce(el)
			stack << result
		else
			stack << el.to_i
		end
	end
	return stack.first
end

reverse_polish = '1 2 + 3 4 - *'
puts reverse_polish
puts calculate(reverse_polish)