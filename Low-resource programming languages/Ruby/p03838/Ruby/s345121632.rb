x, y = gets.split.map(&:to_i)
ans = 0
if x > y && x > 0
  ans += 1 - y - x
elsif x > y && x < 0
  ans += 2 - (y - x)
else
  ans += y - x
end
puts ans
