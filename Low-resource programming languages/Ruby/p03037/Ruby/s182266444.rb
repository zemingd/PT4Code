n, m = gets.chomp.split.map(&:to_i)
x = []
for a in 0..n - 1
  x << 0
end
for b in 1..m
  l, r = gets.chomp.split.map(&:to_i)
  for c in l - 1..r - 1
    x[c] = x[c] + 1
  end
end
puts x.index(m)
