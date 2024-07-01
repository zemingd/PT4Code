def codei
  return gets.split.map &:to_i
end
n = codei; t, a = codei; h = codei
m = 601; ans = 0
h.length.times do |i|
  average = t - (h[i]*0.006)
  x = (a - average).abs
  if x < m
    m = x
    ans = i + 1
  end
end
puts ans
