stack = []
gets.split.each do |s|
  if s =~ /\d+/
    stack.push s.to_i
  else
    b = stack.pop
    a = stack.pop
    stack.push a.__send__ s, b
  end
end
p stack.pop