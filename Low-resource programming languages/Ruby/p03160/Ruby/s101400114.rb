n = gets.to_i
h = gets.split.map(&:to_i)

INF = 10010010001

dp = Array.new(n, INF)
dp[0] = 0

0.upto(n - 2) do |i|
  dp[i + 1] = [dp[i + 1], dp[i] + (h[i + 1] - h[i]).abs].min
  dp[i + 2] = [dp[i + 2], dp[i] + (h[i + 2] - h[i]).abs].min if i + 2 < n
end

puts dp[n - 1]
