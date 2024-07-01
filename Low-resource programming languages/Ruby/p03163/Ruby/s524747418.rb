N, W = gets.split.map(&:to_i)
wvs = N.times.map { gets.split.map(&:to_i) }
dp = Array.new(N + 1) { Array.new(W + 1, 0) }

N.times do |i|
  w, v = wvs[i]
  (0..W).each do |j|
    if j < w
      dp[i + 1][j] = dp[i][j]
    else
      base = dp[i][j - w]
      current = dp[i][j]
      dp[i + 1][j] = base + v > current ? base + v : current
    end
  end
end
puts dp[N].max