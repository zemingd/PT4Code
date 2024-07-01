n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

count = 0
n.times do |i|
  if a[i] >= b[i]
    count += b[i]
    next
  end

  count += a[i]
  b[i] -= a[i]
  if a[i+1] <= b[i]
    count += a[i+1]
    a[i+1] = 0
    next
  end

  count += b[i]
  a[i+1] -= b[i]

end

puts count