s = gets.split
stack = []
s.each do |a|
  if a =~ /[\+\-\*]/
    o1 = stack.pop
    o2 = stack.pop
    stack << eval("#{o2}#{a}#{o1}")
  else
    stack << a
  end
end

p stack[-1]

