x, k, d = gets.split.map(&:to_i)
ans = 0

if x <= k * d
  if k.even?
    ans = x % d
    ans = d if ans == 0 && k == d
  else
    if x == d
      ans = [(x % d + d).abs, (x % d - d).abs].min
      ans -= d
    else
      ans = [(x % d + d).abs, (x % d - d).abs].min
    end
  end
else
  ans = x - k * d
end

puts ans
