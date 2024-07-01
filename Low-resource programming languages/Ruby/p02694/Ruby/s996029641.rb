x = gets.to_i
res = 0
cur = 100
while cur < x
  cur += cur / 100
  res += 1
end
puts res