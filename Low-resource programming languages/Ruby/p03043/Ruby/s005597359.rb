n, k = gets.split.map(&:to_i)
ans = 0.0
for i in 0...n
  t = (k.to_f / (i + 1)).ceil
  b = Math.log2(t).ceil
  ans += 1.0 / (2 ** b)
end
puts ans / n
