x, y = gets.split.map(& :to_i)

ans = (x.abs - y.abs).abs
if x > y
  ans += 1
  ans += 1 if x * y > 0
elsif x * y < 0
  ans += 1
end
puts ans
