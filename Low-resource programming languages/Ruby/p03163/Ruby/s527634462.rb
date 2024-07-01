N, W = gets.split.map(&:to_i)
WV = N.times.map { gets.split.map(&:to_i) }

dp = Array.new(W + 1, 0)

1.upto(N) do |n|
  W.downto(1) do |w_lim|
    w = WV[n-1][0]

    if w_lim >= w
      v = dp[w_lim - w] + WV[n-1][1]
      dp[w_lim] = v if v > dp[w_lim]
    end
  end
end

puts dp[W]
