N = gets.to_i
hs = gets.split.map(&:to_i)
dp = Array.new(N, 0)
dp[1] = (hs[0]-hs[1]).abs
(2...N).each do |i|
    dp[i] = [dp[i-1] + (hs[i-1] - hs[i]).abs, dp[i-2] + (hs[i-2] - hs[i]).abs].min
end
puts dp[N-1]