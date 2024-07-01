readlines.each do |line|
  m, f, r = line.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1

  next puts :F if m == -1 || f == -1
  a = m + f
  next puts :A if 80 <= a
  next puts :B if 65 <= a && a < 80
  next puts :C if 50 <= a && a < 65 || r >= 50
  next puts :D if 30 <= a && a < 50
  next puts :F
end