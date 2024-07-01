n = gets.to_i
dp = Array.new(n + 1, n)
dp[1] = 1

c6 = 1
c9 = 1
n.times do |i|
  y = i + 1
  if y == 6 * c6
    dp[y] = 1
    c6 *= 6
  end
  if y == 9 * c9
    dp[y] = 1
    c9 *= 9
  end

  res = [dp[y]]
  res << dp[y - c9] + dp[c9]
  res << dp[y - c6] + dp[c6]
  res << dp[y - 1] + dp[1]
  dp[y] = res.min
end
puts dp[n]