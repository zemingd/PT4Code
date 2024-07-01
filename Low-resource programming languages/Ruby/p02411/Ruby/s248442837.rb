def rate(m, f, r)
end
readlines.each do |line|
  m, f, r = line.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1

  puts :F if m == -1 || f == -1
  a = m + f
  puts :A if 80 <= a
  puts :B if 65 <= a && a < 80
  puts :C if 50 <= a && a < 65 || r >= 50
  puts :D if 30 <= a && a < 50
  puts :F
end