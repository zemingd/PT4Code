def rate(m, f, r)
  return 'F' if m == -1 || f == -1
  a = m + f
  return 'A' if 80 <= a
  return 'B' if (65...80).include?(a)
  return 'C' if (50...65).include?(a) || r >= 50
  return 'D' if (30...50).include?(a)
  return 'F'
end
readlines.each do |line|
  m, f, r = line.split.map(&:to_i)
  break if [m, f, r].all? {|i| i == -1 }
  puts rate(m, f, r)
end