def max(a, b)
  return a < b ? b : a
end

N, W = gets.split.map(&:to_i)
w = Array.new(N + 1)
v = Array.new(N + 1)
N.times do |i|
  w[i + 1], v[i + 1] = gets.split.map(&:to_i)
end
dp = [Array.new(W + 1, 0)]
# iは品物の番号1~N, jは重さの合計1~W
# dp[i][sum_w] #=> i-1 番目までの品物から重さが sum_w を超えないように選んだときの、価値の総和の最大値
(1..N).each do |i|
  dp[i] = [0]
  (1..W).each do |j|
    if j - w[i] < 0
      dp[i][j] = dp[i - 1][j]
    else
      # 品物(w[i], v[i])を選ぶときdp[i-1][j-w[i]] 品物を選ばないときdp[i-1][j]
      dp[i][j] = max(dp[i - 1][j - w[i]] + v[i], dp[i - 1][j])
    end
  end
end

puts dp[N][W]