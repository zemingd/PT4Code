n, w = gets.chomp.split(" ").map(&:to_i)
wv = n.times.map { gets.chomp.split(" ").map(&:to_i) }
dp = Array.new(n + 1) { Array.new(w + 1) { 0 } }
n.times do |i|
  0.upto(w) do |j|
    wi, vi = wv[i]
    if j - wi >= 0
      dp[i + 1][j] = dp[i][j - wi] + vi if dp[i + 1][j] < dp[i][j - wi] + vi
    end
    dp[i + 1][j] = dp[i][j] if dp[i + 1][j] < dp[i][j]
  end
end
puts dp[n][w]