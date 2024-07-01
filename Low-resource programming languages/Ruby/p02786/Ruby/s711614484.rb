h = gets.to_i

cnt = 0
mon = 1
while h > 1
  cnt += mon
  h /= 2
  mon *= 2
end
puts cnt+mon