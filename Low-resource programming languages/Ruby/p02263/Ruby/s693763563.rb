def operator?(s)
	s =~ /\+|-|\*/
end

def number?(s)
	return true if s.is_a? Integer
	s =~ /\A-?\d+\Z/
end

def operate(x, y, o)
x = x.to_i unless x.is_a? Integer
	y = y.to_i unless y.is_a? Integer
	case o
	when "+"
		x + y
	when "-"
		x - y
	when "*"
		x * y
	else
		raise "Illegal statement. #{x} #{y} #{o}"
	end
end

inputs = STDIN.gets.split
stack = []
inputs.each do |e|
	if number?(e)
		stack.push(e)
	elsif operator?(e)
		x, y = stack.pop(2)
		stack.push(operate x, y, e)
	end
end

puts stack.pop