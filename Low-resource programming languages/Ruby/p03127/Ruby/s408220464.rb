gets
m = gets.split.map(&:to_i)

while m.size != 1
  max0, max1 = m.max(2)
  m[m.index(max0)] = max0 - (max0 / max1) * m.min
  m.reject!(&:zero?)
  p m
end

puts m.first
