h = gets.to_i

ans = 0
d = 1

while h >= d
  a = h / d
  ans += a
  d *= 2
end

puts d - 1