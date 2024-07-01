x, y = gets.chomp.split.map(&:to_i)
res = 0

if x.abs < y.abs
  if x < 0
    x *= -1
    res += 1
  end
  res += y.abs - x.abs
elsif x.abs > y.abs
  if x > 0
    x *= -1
    res += 1
  end
  res += x.abs - y.abs
end

if x * y < 0
  res += 1
end
puts res