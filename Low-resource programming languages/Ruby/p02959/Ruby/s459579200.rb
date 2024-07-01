n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
count = 0
for i in 0...n do
  if a[i] >= b[i]
    count += b[i]
    a[i] -= b[i]
  else
    count += a[i]
    bb = b[i] - a[i]
    a[i] = 0
    if a[i + 1] >= bb
      count += bb
      a[i + 1] -= bb
    else
      count += a[i + 1]
      a[i + 1] = 0
    end
  end
end
puts count
