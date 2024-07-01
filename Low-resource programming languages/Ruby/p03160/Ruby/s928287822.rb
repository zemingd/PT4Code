n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

dp = Array.new(n)
dp[0] = 0
dp[1] = (h[0] - h[1]).abs

(2..(n - 1)).each do |i|
  dp[i] = [dp[i - 2] + (h[i - 2] - h[i]).abs, dp[i - 1] + (h[i - 1] - h[i]).abs].min
end

puts dp[n - 1]