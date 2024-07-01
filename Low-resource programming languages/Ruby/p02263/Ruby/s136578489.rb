data = gets.chomp.split
stack = []

while (x = data.shift)
  if /^[\+\-\*]$/.match(x)
    a, b = stack.pop, stack.pop
    stack << eval(b + x + a).to_s
  else
    stack << x
  end
end
puts stack.last
