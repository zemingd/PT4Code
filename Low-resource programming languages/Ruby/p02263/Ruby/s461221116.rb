a = gets.chomp.split
stack = []
for i in 0..a.size
  if a[i] == '+'
    x1 = stack.pop
    x2 = stack.pop
    stack << x1 + x2
  elsif a[i] == '*'
    x1 = stack.pop
    x2 = stack.pop
    stack << x1*x2
  elsif a[i] == '-'
    x1 = stack.pop
    x2 = stack.pop
    stack << x2 - x1
  else
    stack << a[i].to_i
  end
end
puts stack[0]