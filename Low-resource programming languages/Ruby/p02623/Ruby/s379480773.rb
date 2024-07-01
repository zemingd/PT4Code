n,m,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

i = 0
sum = 0
while sum <= k && i < n
  sum += a[i]
  i += 1
end
if sum > k
  i -= 1
  sum -= a[i]
end
j = 0
while sum <= k && j < m
  sum += b[j]
  j += 1
end
if sum > k
  j -= 1
  sum -= b[j]
end
max = i+j

while i > 0
  i -= 1
  sum -= a[i]
  while sum <= k && j < m
    sum += b[j]
    j += 1
  end
  if sum > k
    j -= 1
    sum -= b[j]
  end
  max = [max,i+j].max
end
puts max