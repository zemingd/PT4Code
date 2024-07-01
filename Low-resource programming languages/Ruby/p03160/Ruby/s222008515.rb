n = gets.to_i
h = gets.split(" ").map(&:to_i)

dp = Array.new(n, 1.0 / 0)
dp[0] = 0

(0..(n - 1)).each do |i|
  dp[i] = [dp[i], dp[i - 1] + (h[i] - h[i - 1]).abs].min
  dp[i] = [dp[i], dp[i - 2] + (h[i] - h[i - 2]).abs].min if i > 1
end

puts dp[-1]