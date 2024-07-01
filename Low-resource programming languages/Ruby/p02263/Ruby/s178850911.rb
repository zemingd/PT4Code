expression = gets.split( " " )
stack = []
expression.each { |exp|
	if "+" == exp
		b = stack.pop
		a = stack.pop
		stack.push( a + b )
	elsif "-" == exp
		b = stack.pop
		a = stack.pop
		stack.push( a - b	 )
	elsif "*" == exp
		b = stack.pop
		a = stack.pop
		stack.push( a * b )
	else
		stack.push( exp.to_i )
	end
}
puts( stack.pop )