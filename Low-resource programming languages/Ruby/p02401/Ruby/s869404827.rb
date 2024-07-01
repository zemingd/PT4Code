while (ln = gets)
  a, op, b = ln.split
  break if op == '?'
  puts a.to_i.send(op, b.to_i)
end