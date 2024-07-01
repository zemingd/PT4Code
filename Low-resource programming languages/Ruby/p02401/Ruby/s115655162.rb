loop do
  args = gets.split(" ")
  x = args[0].to_i
  y = args[2].to_i
  op = args[1]

  if op == '?'
    break
  end

  puts x.send(op.to_sym, y)
end
