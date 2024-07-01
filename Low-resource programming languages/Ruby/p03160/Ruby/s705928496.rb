a = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

dp = Array.new(h.size, 10**9)

dp[0] = 0
dp[1] = (h[1] - h[0]).abs

2.upto(h.size-1) do |i|
  dp[i] = [dp[i-2] + (h[i] - h[i-2]).abs, dp[i-1] + (h[i] - h[i-1]).abs].min
end

p dp[h.size-1]
