n, m = gets.split.map(&:to_i)

a = []
dp = []
dp[0] = 1

m.times do |i|
  dp[gets.to_i] = 0
end

for i in 2..n
  next if dp[i]
  dp[i] = dp[i-1] + dp[i-2]
end

puts dp[n] % 1000000007
