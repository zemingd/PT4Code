x, y = gets.split.map(&:to_i)

ans = 0
if x > y
  x = -x
  ans += 1
end
ans += (x.abs - y.abs).abs
if x * y < 0
  ans += 1
end
puts ans