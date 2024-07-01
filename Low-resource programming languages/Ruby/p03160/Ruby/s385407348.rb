N = gets.to_i
hs = gets.split.map(&:to_i)

dp = Array.new(N)
dp[0] = 0
dp[1] = (hs[0] - hs[1]).abs

(2...N).each do |i|
  dp[i] =  [dp[i - 1] + (hs[i] - hs[i - 1]).abs, dp[i - 2] + (hs[i] - hs[i - 2]).abs].min
end

puts dp.last
