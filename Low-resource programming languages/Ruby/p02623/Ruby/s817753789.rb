n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
t = 0
c = 0
i, j = 0, 0
while true
  break if i == a.size && j == b.size
  if i == a.size
    break if t + b[j] > k
    t += b[j]
    j += 1
    next
  end
  if j == b.size
    break if t + a[i] > k
    t += a[i]
    i += 1
    next
  end
  if a[i] < b[j]
    break if t + a[i] > k
    t += a[i]
    i += 1
    next
  end
  if a[i] > b[j]
    break if t + b[j] > k
    t += b[j]
    j += 1
    next
  end
  z = 0
  while a[i+z] == b[j+z]
    z += 1
  end
  if a[i+z].to_i < b[j+z].to_i
    break if t + a[i] > k
    t += a[i]
    i += 1
    next
  end
  break if t + b[j] > k
  t += b[j]
  j += 1
end
p i+j
