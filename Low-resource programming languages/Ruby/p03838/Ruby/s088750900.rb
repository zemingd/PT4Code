x, y = gets.split.map(&:to_i)

n = y.abs - x.abs

ans = 0
if n > 0
  ans = n
  ans += 1 if x * y < 0
  ans += 2 if x < 0 && y < 0
else
  ans = 1
  ans += x.abs - y.abs
  if x * y > 0
    ans += 1
  end
end

puts ans