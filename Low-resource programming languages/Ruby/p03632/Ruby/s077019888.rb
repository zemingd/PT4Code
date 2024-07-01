a,b,c,d = gets.split.map(&:to_i)
ans = 0
if a <= d and c <= b
  if c <= a
    if b <= d
      ans = d - a
    else
      ans = b - a
    end
  else
    if d <= b
      ans = d - c
    else
      ans = b - c
    end
  end
end
puts ans
