expression = gets.chomp.split(" ")

stack = []

expression.each do |elem|
  case elem
  when '+', '-', '*', '/'
    a = stack.pop; b = stack.pop
    stack.push(b.send(elem, a))
  else
    stack.push(elem.to_i)
  end
end

puts stack.pop