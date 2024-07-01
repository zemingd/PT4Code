def check(m, f, r)
  return 'F' if m == -1 || f == -1
  return 'A' if m + f >= 80
  return 'B' if m + f >= 65
  return 'C' if m + f >= 50 || m + f >= 30 && r >= 50
  return 'D' if m + f >= 30
  return 'F'
end

while (n = gets.split(' ').map(&:to_i)) != [-1, -1, -1]
  m, f, r = n
  puts check(m, f, r)
end