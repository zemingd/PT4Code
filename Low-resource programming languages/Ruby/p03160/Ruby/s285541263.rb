N = gets.to_i
ps = gets.chomp.split.map(&:to_i)

dp = Array.new(N, 10000)

dp[0] = 0
dp[1] = (ps[0] - ps[1]).abs
for i in 2..(N - 1)
  dp[i] = [dp[i -1] + (ps[i - 1] - ps[i]).abs, dp[i - 2] + (ps[i - 2] - ps[i]).abs].min
end

puts dp[N-1]
