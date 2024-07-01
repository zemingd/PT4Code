X = gets.to_i
c = 100
ans = 0

while c < X
  c = (c * 1.01).floor
  ans += 1
end

puts ans
