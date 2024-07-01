x, k, d = gets.split.map(&:to_i)
ans = 0

if x <= k * d && x != d
  if k.even?
    ans = x % d
  else
    ans = [(x % d + d).abs, (x % d - d).abs].min
    ans = 0 if x == d
  end
elsif x == d
  ans = x % d
  ans += d if ans == 0
else
  ans = x - k * d
end

puts ans
