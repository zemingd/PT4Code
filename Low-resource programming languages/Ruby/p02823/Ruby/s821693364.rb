n, a, b = gets.chomp.split.map(&:to_i)
if (b - a) % 2 == 0
  puts (b - a) / 2
else
  res = []
  a1 = a - 1
  res << 1 + a1 + (b - a1 - 1) / 2
  bn = n - b
  res << 1 + bn + (n - a - bn - 1) / 2
  puts res.min
end