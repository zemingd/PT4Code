n, m = gets.split.map(&:to_i)
mod = 1_000_000_007
dp = Array.new(n + 2, 0)
a = []
dp[0] = 1
m.times do |i|
  a[i] = gets.to_i
  dp[a[i]] = -1
end
n.times do |i|
  next if dp[i] == -1
  if dp[i + 1] != -1
    dp[i + 1] += dp[i]
    dp[i + 1] %= mod
  end
  if dp[i + 2] != -1
    dp[i + 2] += dp[i]
    dp[i + 2] %= mod
  end
end
puts dp[n]
