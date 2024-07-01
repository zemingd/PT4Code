arr = gets.chomp.split
stack = []

arr.each{|c|
	case c
	when "+"
		stack.push stack.pop + stack.pop
	when "-"
		stack.push - stack.pop + stack.pop
	when "*"
		stack.push stack.pop * stack.pop
	else
		stack.push c.to_i
	end
}
puts stack[0]