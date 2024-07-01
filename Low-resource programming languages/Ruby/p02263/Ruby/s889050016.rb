stack = []
gets.split.each do |sym|
  if sym =~ /\d+/ # Number
    stack << sym.to_i
  else            # Operator
    y, x = stack.pop, stack.pop
    stack.push x.send(sym, y)
  end
end

puts stack[0]

