input = gets.split

stack = []
input.each do |inp|
	if ["+", "-", "*"].include?(inp)
		val1 = stack.pop.to_i
		val2 = stack.pop.to_i
		val3 = val2.send(inp, val1)
		stack.push(val3)
	else
		stack.push(inp.to_i)
	end
end

puts stack.pop