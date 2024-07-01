while line = gets
  a, b = line.split(' ')
  ab = a * b.to_i
  ba = b * a.to_i
  puts [ab, ba].sort.first
end
