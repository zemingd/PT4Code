n, lw = gets.split.map(&:to_i)
w, v = Array.new(n) { gets.split.map(&:to_i) }.transpose
dp = Array.new(n + 1) { Array.new(lw + 1) { 0 } }

1.upto(n) do |i|
  0.upto(lw) do |j|
    if w[i - 1] <= j
      dp[i][j] = [dp[i - 1][j - w[i - 1]] + v[i - 1], dp[i - 1][j]].max
    else
      dp[i][j] = dp[i - 1][j]
    end
  end
end

puts dp[n][lw]
