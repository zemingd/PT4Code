x, k, d = gets.split(" ").map(&:to_i)
ans = 0
max = k * d
if x == d
  if k % 2 == 0
    ans = x
  else
    ans = x - d
  end
else
  if x < max
    ans = x - (max / 2)
    if k % 2 != 0
      ans -= d
    end
  else
    ans = x - max
  end
end
puts ans.abs