x = gets.to_i
m = 100
ans = 0
until m >= x
  m = (m * 1.01).floor
  ans += 1
end
p ans
