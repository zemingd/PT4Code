N = gets.to_i
h = gets.split.map(&:to_i)
dp = [0, (h[0] - h[1]).abs]
2.step(N-1) do |i|
  dp[0], dp[1] = dp[1], [dp[1] + (h[i-1] - h[i]).abs, dp[0] + (h[i-2] - h[i]).abs].min
end
puts dp[1]