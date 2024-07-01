inputs = gets.split
stack = []
inputs.each{|c|
	if c == '+'
		stack.push stack.pop + stack.pop
	elsif c == '-'
		stack.push -stack.pop + stack.pop
	elsif c == '*'
		stack.push stack.pop * stack.pop
	else
		stack.push c.to_i
	end
}
puts stack[0]