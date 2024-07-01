loop do
  a, op, b = gets.split
  break if op == '?'
  puts a.to_i.send(op, b.to_i)
end