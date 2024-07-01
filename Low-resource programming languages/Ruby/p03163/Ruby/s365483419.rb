N, W = gets.chomp.split.map(&:to_i)
a = []
N.times do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end

dp = Array.new(105) { Array.new(10**5 + 5, 0) }

1.upto(N) do |i|
  w, v = a[i-1]
  1.upto(W) do |j|
    # 選ぶ
    if j >= w
      dp[i][j] = [dp[i][j], dp[i-1][j-w] + v].max
    end
    # 選ばない
    dp[i][j] = [dp[i][j], dp[i-1][j]].max
  end
end
p dp[N][W]
