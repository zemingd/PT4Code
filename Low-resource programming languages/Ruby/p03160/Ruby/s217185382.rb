n = gets.to_i
hs = gets.strip.split.map(&:to_i)

inf = 10 << 60

dp = Array.new(n, inf)

dp[0] = 0
dp[1] = (hs[1] - hs[0]).abs

(2...n).each do |i|
    dp[i] = [dp[i], dp[i - 1] + (hs[i] - hs[i - 1]).abs].min
    dp[i] = [dp[i], dp[i - 2] + (hs[i] - hs[i - 2]).abs].min
end

puts dp[n - 1]
