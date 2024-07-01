arr = gets.split
stack = []
arr.each{|s|
  case s
  when "+";
    a = stack.pop
    b = stack.pop
    stack.push(b+a)
  when "-";
    a = stack.pop
    b = stack.pop
    stack.push(b-a)
  when "*";
    a = stack.pop
    b = stack.pop
    stack.push(b*a)
  else
    stack.push(s.to_i)
  end
}
puts stack[0]