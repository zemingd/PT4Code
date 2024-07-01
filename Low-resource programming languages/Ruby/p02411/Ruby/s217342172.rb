def rate(m, f, r)
  return :F if m == -1 || f == -1
  a = m + f
  return :A if 80 <= a
  return :B if 65 <= a && a < 80
  return :C if 50 <= a && a < 65 || r >= 50
  return :D if 30 <= a && a < 50
  return :F
end
readlines.each do |line|
  m, f, r = line.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  puts rate(m, f, r)
end