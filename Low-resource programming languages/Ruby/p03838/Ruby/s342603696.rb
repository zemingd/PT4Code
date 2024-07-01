x, y = gets.split.map(&:to_i)
ans = 0
if x > y
  if x > 0 && y > 0
    ans += 2 + x - y
  elsif x > 0 && y < 0
    if y.abs > y
      ans += 1 - x - y
    else
      ans += 1 + x + y
    end
  else
    ans += 2 + x - y
  end
else
  if x > 0 && y > 0
    ans += y - x
  elsif x < 0 && y > 0
    if x.abs > y
      ans += x.abs + y
    else
      ans += 1 + x + y
    end
  else
    ans += y - x
  end
end
puts ans
