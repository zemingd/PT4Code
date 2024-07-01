def check(m, f, r)
  return 'F' if '-1' =~ /#{m}|#{f}/
  return 'A' if m + f >= 80
  return 'B' if m + f >= 65
  return 'C' if m + f >= 50 || r >= 50
  return 'D' if m + f > 30
end

while (n = gets.split(' ').map(&:to_i)) != [-1, -1, -1]
  m, f, r = n
  puts check(m, f, r)
end