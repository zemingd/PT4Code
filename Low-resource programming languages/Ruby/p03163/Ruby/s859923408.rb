def update(dp, x, y, v)
  dp[x][y] = [dp[x][y], v].max
end

N, W = gets.split.map(&:to_i)
h, v = N.times.map{ gets.split.map(&:to_i) }.transpose

dp = Array.new(N + 1){ Hash.new(0) }

(0...N).each do |i|
  (0..W).each do |j|
    next if dp[i][j].zero?
    update(dp, i + 1, j, dp[i][j])
    update(dp, i + 1, j + h[i], dp[i][j] + v[i]) if j + h[i] <= W
  end
  update(dp, i + 1, h[i], v[i])
end

p dp[N].values.max