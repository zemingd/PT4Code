stack = []
gets.chomp.split.each do |s|
  if s == '+' || s == "-" || s == '*'
    b = stack.pop
    a = stack.pop
    stack << eval("#{a}#{s}#{b}")
  else
    stack << s
  end
end
puts stack.pop

