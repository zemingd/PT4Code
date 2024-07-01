h = gets.to_i

ans = 0
add = 1

while h > 0
  ans += add
  add *= 2
  h = h / 2
end
p ans
