x, y = gets.split.map(&:to_i)
ans = 0
if x > y
  if x > 0 && y > 0
    ans += 2 + x - y
  elsif x.zero? || y.zero?
    ans += 1 + x.abs + y.abs
  elsif x > 0 && y < 0
    if y.abs > x
      ans += 1 + (y.abs - x)
    else
      ans += 1 + (x.abs - y.abs)
    end
  else
    ans += 2 + (y.abs - x.abs)
  end
else
  if (x > 0 && y > 0) || (x < 0 && y < 0)
    ans += (x - y).abs
  elsif x.zero? || y.zero?
    ans += x.abs + y.abs
  elsif x < 0 && y > 0
    if x.abs > y
      ans += x.abs - y
    else
      ans += 1 + (y - x.abs)
    end
  end
end
puts ans
