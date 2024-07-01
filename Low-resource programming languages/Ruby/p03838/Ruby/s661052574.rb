x, y = gets.split.map(&:to_i)
ans = 0
if x > y
  if x > 0 && y > 0
    ans += 2 + x - y
  elsif x >= 0 && y <= 0
    if x == 0 || y == 0
      ans += 1 + x.abs + y.abs
    elsif y.abs > x
      ans += 1 + (-y + x)
    else
      ans += 1 + x + y
    end
  else
    ans += 2 + x - y
  end
else
  if x > 0 && y > 0
    ans += y - x
  elsif x <= 0 && y >= 0
    if x == 0 || y == 0
      ans += x.abs + y.abs
    elsif x.abs > y
      ans += x.abs + y
    else
      ans += 1 + x + y
    end
  else
    ans += y - x
  end
end
puts ans
