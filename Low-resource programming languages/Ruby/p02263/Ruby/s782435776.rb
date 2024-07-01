n = gets.chomp.split(" ")

stk = Array.new

n.each { |i|
	if i == "+"
	    d1 = stk.pop
	    d2 = stk.pop
		stk.push(d2 + d1)
	elsif i == "-"
	    d1 = stk.pop
	    d2 = stk.pop
		stk.push(d2 - d1)
	elsif i == "*"
	    d1 = stk.pop
	    d2 = stk.pop
		stk.push(d2 * d1)
	else
		stk.push(i.to_i)
	end
}
puts stk.pop