X = gets.chomp.to_i
ans = 0
m = 100
while m < X
  d = (m * 0.01).to_i
  m += d
  ans += 1
end

puts ans
