n, W = gets.split.map(&:to_i)
wv = n.times.map { gets.split.map(&:to_i) }

dp = Array.new(n + 1) { Array.new(W + 1) { 0 } }
dp[0][0] = 0
0.upto(n - 1) do |i|
  w = wv[i][0]
  v = wv[i][1]
  0.upto(W) do |j|
    dp[i + 1][j] = dp[i][j] if dp[i + 1][j] < dp[i][j]
    dp[i + 1][j + w] = dp[i][j] + v if j + w <= W
  end
end

puts dp[n].max
