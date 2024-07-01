n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

a.unshift(0)
b.unshift(0)
i = 1
j = 1
while i <= n && a[i] < k
  a[i] += a[i - 1]
  i += 1
end
while j <= m && b[j] < k
  b[j] += b[j - 1]
  j += 1
end
i -= 1 if i > n
j -= 1 if j > m
while a[i] + b[j] > k && i + j > 0
  if a[i] >= b[j]
    i -= 1
  elsif a[i] < b[j]
    j -= 1
  end
end
puts i + j