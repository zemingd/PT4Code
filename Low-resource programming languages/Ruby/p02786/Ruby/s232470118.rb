h = gets.to_i
res = 0
d = 1
while h > 0
  res += d
  h /= 2
  d *= 2
end
puts res