N, M = gets.chomp.split().map(&:to_i)

danger = []
M.times do
  danger << gets.chomp.to_i
end

dp = [0] * (N+1)
dp[0] = 1
dp[1] = danger.include?(1) ? 0 : 1

for i in 2..N do
  if danger.include?(i)
    dp[i] = 0
  else
    dp[i] = dp[i-1] + dp[i-2]
  end
end

puts dp[-1] % 1000000007
