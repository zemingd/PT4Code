stack = []
gets.chomp.split.each do |c|
  if c =~ /\d/
    stack << c.to_i
  else
    y = stack.pop
    x = stack.pop
    stack << x.send(c, y)
  end
end
p stack[0]
