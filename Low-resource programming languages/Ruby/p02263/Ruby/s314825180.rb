str = gets.chomp.split(" ")
stack = []
str.each do |op|
  if op == "+" or op == "-" or op == "*"
    a, b = stack.pop(2)
    stack.push(a.send(op, b))
  else
    stack.push(op.to_i)
  end
end

puts stack.first
