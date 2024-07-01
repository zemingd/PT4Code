N, *H = [gets, *gets.split].map(&:to_i)

dp = [0, (H[0]-H[1]).abs]
2.step(N-1) do |i|
  dp[i] = [dp[i-1]+(H[i-1] - H[i]).abs, dp[i-2]+(H[i-2] - H[i]).abs].min
end
puts dp.last