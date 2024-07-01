x = gets.to_i
m = 100
ans = 0
while m < x
  m = (m * 1.01).to_i
  ans += 1
end
p ans