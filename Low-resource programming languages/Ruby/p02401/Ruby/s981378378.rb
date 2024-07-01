while s = gets
  a, op, b = s.chomp.split
  break if op == '?'
  puts a.to_i.send(op.to_sym, b.to_i)
end