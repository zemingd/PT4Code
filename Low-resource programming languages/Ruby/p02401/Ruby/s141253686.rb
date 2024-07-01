readlines.each do |line|
  a, op, b = line.split
  next if op == '?'
  puts a.to_i.send(op, b.to_i)
end