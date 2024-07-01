n, w = gets.split.map(&:to_i)
g = [nil]
n.times do
  g << gets.split.map(&:to_i)
end
dp = Array.new(n+1) { Array.new(w+1, 0) }
max = 0
(1..n).each do |i|
  (1..w).each do |j|
    if j >= g[i][0]
      dp[i][j] = dp[i-1][j] > dp[i-1][j-g[i][0]] + g[i][1] ? dp[i-1][j] : dp[i-1][j-g[i][0]] + g[i][1]
    else
      dp[i][j] = dp[i-1][j]
    end
    max = dp[i][j] if max < dp[i][j]
  end
end
puts max