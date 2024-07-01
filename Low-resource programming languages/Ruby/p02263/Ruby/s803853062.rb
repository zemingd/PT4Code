elements = gets.chomp.split(" ")
stack = []
elements.each do |e|
  case e
    when "+"
      a, b = stack.pop(2)
      stack.push(a + b)
    when "*"
      a, b = stack.pop(2)
      stack.push(a * b)
    when "-"
      a, b = stack.pop(2)
      stack.push(a - b)
    else
      stack.push(e.to_i)
  end
end
puts stack