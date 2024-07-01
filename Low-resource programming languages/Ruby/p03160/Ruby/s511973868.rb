n = gets.to_i
h = gets.split.map(&:to_i)

dp = [0]
dp[1] = (h[0] - h[1]).abs

1.upto(n - 1) do |i|
  dp[i] = [(h[i] - h[i - 1]).abs + dp[i - 1], (h[i] - h[i - 2]).abs + dp[i - 2]].min
end

puts dp[n - 1]
