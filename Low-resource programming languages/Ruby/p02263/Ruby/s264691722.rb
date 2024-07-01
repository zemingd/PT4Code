stack = []

gets.chomp.split.each do |i|
	if i == "+"
		stack.push(stack.pop + stack.pop)
	elsif i == "-"
		stack.push(0 - stack.pop + stack.pop)	
	elsif i == "*"
		stack.push(stack.pop * stack.pop)
	else
		stack.push(i.to_i)
	end
end

p stack.pop
