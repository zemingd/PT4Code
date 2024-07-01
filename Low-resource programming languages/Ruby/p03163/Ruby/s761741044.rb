N, W = gets.split.map(&:to_i)
WV = N.times.map { gets.split.map(&:to_i) }

dp = Array.new(W + 1, 0)

N.times do |n|
  W.downto(WV[n][0]) do |w_lim|
    if w_lim >= WV[n][0]
      v = dp[w_lim - WV[n][0]] + WV[n][1]
      dp[w_lim] = v if v > dp[w_lim]
    end
  end
end

puts dp[W]