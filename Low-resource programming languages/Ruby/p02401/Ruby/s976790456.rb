readlines.each do |line|
  a, op, b = line.split
  break if op == '?'
  puts a.to_i.send(op, b.to_i)
end