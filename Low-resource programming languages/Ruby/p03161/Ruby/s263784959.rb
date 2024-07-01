N, K, *H = [*gets.split, *gets.split].map(&:to_i)

dp = [0]
1.step(N-1) do |i|
  dp[i] = Float::INFINITY
  1.step(K) do |j|
    break if i-j < 0
    cost = dp[i-j] + (H[i]-H[i-j]).abs
    dp[i] = cost if cost < dp[i]
  end
end
puts dp.last
