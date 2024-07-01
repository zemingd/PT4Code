N, K = gets.split.map &:to_f
dp = Array.new(K+1){0}

1.upto(N) do |i|
  dp[[i, K].min] += 1.0 / N
end

100.times do
  nex = Array.new(K+1){0}
  nex[K] = dp[K]
  1.upto(K-1) do |i|
    nex[[2*i, K].min] += dp[i] * 0.5
  end
  dp = nex
end

p dp[K]
