elements = gets.chomp.split(" ")
stack = []
elements.each do |e|
  case e
    when "+"
      a = stack.pop.to_i
      b = stack.pop.to_i
      stack.unshift(b + a)
    when "*"
      a = stack.pop.to_i
      b = stack.pop.to_i
      stack.push(b * a)
    when "-"
      a = stack.pop.to_i
      b = stack.pop.to_i
      stack.push(b - a)
    else
      stack.push(e)
  end
end
puts stack