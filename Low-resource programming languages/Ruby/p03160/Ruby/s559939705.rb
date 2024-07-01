N = gets.to_i
H = gets.split.map(&:to_i)

dp = Array.new(N, 0)

1.upto(N-1) do |i|
  cost = []
  cost << dp[i - 1] + (H[i] - H[i-1]).abs
  cost << dp[i - 2] + (H[i] - H[i-2]).abs if i >= 2
  dp[i] = cost.min
end

puts dp[N-1]
