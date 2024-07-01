N, W = gets.split.map(&:to_i)
WV = N.times.map { gets.split.map(&:to_i) }

dp = Array.new(N + 1) { Array.new(W + 1, 0) }

1.upto(N) do |n|
  1.upto(W) do |w_lim|
    w = WV[n-1][0]

    values = []
    values << dp[n-1][w_lim] # 入れなかった場合
    values << dp[n-1][w_lim - w] + WV[n-1][1] if w_lim >= w # 入れた場合

    dp[n][w_lim] = values.max
  end
end

puts dp[N][W]
