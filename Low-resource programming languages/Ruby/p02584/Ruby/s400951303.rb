x, k, d = gets.split.map(&:to_i)
ans = 0

if x <= k * d
  if k.even?
    ans = x % d
    ans = d if ans == 0
  else
    ans = [(x % d + d).abs, (x % d - d).abs, (x % d).abs].min
  end
else
  ans = x - k * d
end

puts ans
