str = gets
expr = str.split
stack = []

expr.each do |c| 
  case c
  when '+'
    b = stack.pop.to_i
    a = stack.pop.to_i
    stack.push(a+b)
  when '-'
    b = stack.pop.to_i
    a = stack.pop.to_i
    stack.push(a-b)
  when '*'
    b = stack.pop.to_i
    a = stack.pop.to_i
    stack.push(a*b)
  else
    stack.push(c.to_i)
  end
end

puts stack.pop