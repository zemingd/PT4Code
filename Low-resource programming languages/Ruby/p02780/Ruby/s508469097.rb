def exp(n)
  sum = 0
  sum = (n * (n + 1)) / 2
  sum.to_f / n
end

n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
max = -1
s_i = -1
for i in 0..(n-k)
  ex = 0
  for j in 0..k-1
    ex += exp p[i + j]
  end
  max = ex if ex > max
end
puts max
