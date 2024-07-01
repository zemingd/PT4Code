H = gets.to_i

h = H
ans = 0
height = 0
while h >= 1
  ans += (2 ** height)
  height += 1
  h = h / 2
end
puts ans