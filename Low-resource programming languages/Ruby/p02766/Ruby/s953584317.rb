n, k = gets.split.map(&:to_i)
ans = 0
while n > 0
  n = n / k
  ans += 1
end
puts ans