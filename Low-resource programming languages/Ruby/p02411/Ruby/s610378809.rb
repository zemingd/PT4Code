def check(m, f, r)
  return 'F' if m <= 0 || f <= 0
  return m + f >= 80 ? 'A' : m + f >= 65 ? 'B' : m + f >= 50 ? 'C' : m + f >= 30 && r < 50 ? 'D' : r >= 50 ? 'C' : 'F'
end

while (n = gets.split(' ').map(&:to_i)) != [-1, -1, -1]
  m, f, r = n
  puts check(m, f, r)
end