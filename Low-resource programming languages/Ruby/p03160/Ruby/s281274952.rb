n = gets.to_i
h = gets.split.map(&:to_i)
dp = Array.new(n, 0)
dp[0] = 0
dp[1] = (h[1] - h[0]).abs
2.upto(n.pred) do |i|
  dp[i] = [dp[i - 1] + (h[i] - h[i - 1]).abs, dp[i - 2] + (h[i] - h[i - 2]).abs].min
end
puts dp[n - 1]