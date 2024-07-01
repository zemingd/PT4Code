stack = Array.new

data = gets.split
ans=0
data.each do |dt|
if dt!="+"&&dt!="-"&&dt!="*"
	stack.push(dt.to_i)
else
	num=0
	case dt
	when "+"
	num += stack.pop
	num += stack.pop
	stack.push(num)
	when "-"
	num -= stack.pop
	num += stack.pop
	stack.push(num)
	when "*"
	num = stack.pop
	num *= stack.pop
	stack.push(num) 
	end
	end
end

stack.each do |n|
	ans+= n
end

puts ans