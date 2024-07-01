stack = Array.new

d = gets.chomp.split(" ")
d.each { |op|
	case op
	when "+"
		stack << stack.pop + stack.pop
	when "-"
		n = stack.pop
		stack << stack.pop - n
	when "*"
		stack << stack.pop * stack.pop
	else
		stack << op.to_i
	end
}
puts stack[0]