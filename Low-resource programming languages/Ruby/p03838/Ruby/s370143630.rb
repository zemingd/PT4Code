x, y = gets.split.map(&:to_i)
ans = (y.abs-x.abs).abs
if x*y < 0
  ans += 1
end
if x*y == 0
  if x > y
    ans += 1
  end
end
if x*y > 0
  if x > y
    ans += 2
  end
end
puts ans
