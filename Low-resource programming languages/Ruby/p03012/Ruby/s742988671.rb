sum = 0
n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i)
sumw = []
for a in 0..n - 1
  sum = sum + w[a]
  sumw[a] = sum
end
d = []
for b in 0..n - 1
  d << (sum - 2 * sumw[b]).abs
end
puts d.min
