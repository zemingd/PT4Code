ary=gets.chomp.split(" ")
stack=[]
c=[]
ary.each {|x|
	if x =~ /\d+/ 
		x=x.to_i
		stack.unshift(x)
		p stack
		
	c=nil
	elsif x== "+" || x=="-" || x=="*" || x=="/"
		b=stack.shift
		a=stack.shift
		case x
			when "+"
				stack=stack.unshift(a+b)
			when "-"
				stack=stack.unshift(a-b)
			when "*"
				stack=stack.unshift(a*b)
			when "/"
				stack=stack.unshift(a/b)
		end
	end
}
puts stack