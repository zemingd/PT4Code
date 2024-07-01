N, K = gets.split.map &:to_i
dp = Array.new(K+1){0.0}

1.upto(N) do |i|
  dp[[i, K].min] += 1.0 / N.to_f
end

res = dp[K]
40.times do
  (K-1).downto(1) do |i|
    if 2*i < K
      dp[2*i] = dp[i] * 0.5
    else
      res += dp[i] * 0.5
    end
    dp[i] = 0.0
  end
end
p res
