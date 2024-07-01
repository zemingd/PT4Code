n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

a.unshift(0)
b.unshift(0)
i = 1
j = 1

while i <= n
  break if a[i - 1] >= k || a[i] > k
  a[i] += a[i - 1] 
  i += 1
end
while j <= m
  break if b[j - 1] >= k || b[j] > k
  b[j] += b[j - 1]
  j += 1
end

i -= 1
j -= 1
ii = 0
res = j
while j > 0 && ii <= i
  j -= 1 while b[j] > k - a[ii] && j > 0
  res = [res, j + ii].max
  ii += 1
end
puts res