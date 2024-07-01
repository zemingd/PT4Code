stack = gets.split.reduce([]) do |stack, c|
  if c == '+' 
    stack << stack.pop + stack.pop
  elsif c == '-'
    tail = stack.pop
    prev = stack.pop
    stack << prev - tail
  elsif c == '*' 
    stack << stack.pop * stack.pop
  elsif c == '/'
    tail = stack.pop
    prev = stack.pop
    stack << prev / tail
  else
    stack << c.to_i
  end
  stack
end
p stack.pop
