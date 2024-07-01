def exp(n)
  sum = 0
  sum = (n * (n + 1)) / 2
  sum.to_f / n
end

n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
max = -1
s_i = -1
for i in 0..(n - 1 - k + 1)
  sum = 0
  for j in i..i+k-1
    sum += p[j]
  end
  if sum > max
    max = sum
    s_i = i
  end
end
ex = 0
for i in s_i..s_i+k-1
  ex += exp p[i]
end
puts ex
