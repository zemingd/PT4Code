n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
t = 0
c = 0
while true
  break if a.empty? && b.empty?
  if a.empty?
    break if t + b[0] > k
    t += b.shift
    c += 1
    next
  end
  if b.empty?
    break if t + a[0] > k
    t += a.shift
    c += 1
    next
  end
  if a[0] < b[0]
    break if t + a[0] > k
    t += a.shift
    c += 1
    next
  end
  if a[0] > b[0]
    break if t + b[0] > k
    t += b.shift
    c += 1
    next
  end
  i = 0
  while a[i] == b[i]
    i += 1
  end
  if a[i].to_i < b[i].to_i
    break if t + a[0] > k
    t += a.shift
    c += 1
    next
  end
  break if t + b[0] > k
  t += b.shift
  c += 1
end
p c
