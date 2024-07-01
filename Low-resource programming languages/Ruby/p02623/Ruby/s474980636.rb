n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

a.unshift(0)
b.unshift(0)
i = 1
j = 1

while i <= n
  if a[i] + a[i - 1] > k
    i -= 1
    break
  end
  a[i] += a[i - 1] 
  i += 1
end
while j <= m
  if b[j] + b[j - 1] > k
    j -= 1
    break
  end
  b[j] += b[j - 1]
  j += 1
end
i -= 1 if i > n
j -= 1 if j > m
res = i + j
i.downto(0) do |u|
  t = b[0..j].bsearch_index {|x| x >= k - a[u] }
  if t.nil?
    res = [res, u + j].min
    break
  else
    res = [res, u + t].min
  end
  break if a[u] + b[j] <= k
end
puts res