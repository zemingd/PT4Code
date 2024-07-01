n, k = gets.split.map(&:to_i)
ans = 1
while k**ans <= n
  ans += 1
end
puts ans