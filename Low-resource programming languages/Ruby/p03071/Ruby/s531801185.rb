a, b = gets.split.map(&:to_i)
ans = 0
if a > b
  ans += a
  a -= 1
else
  ans += b
  b -= 1
end

if a > b
  ans += a
  a -= 1
else
  ans += b
  b -= 1
end

puts ans