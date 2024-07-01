n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

for i in 0 .. n - 2 do
  a[i + 1] += a[i]
end

for i in 0 .. m - 2 do
  b[i + 1] += b[i]
end

ans = 0
j = m - 1
for i in 0 .. n - 1 do
  break if a[i] > k
  while j >= 0 and a[i] + b[j] > k
    j -= 1
  end
  ans = [ans, (i + 1) + (j + 1)].max()
end

p ans
