C = [100_0000,2,5,5,4,5,6,3,7,6]
N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort.reverse
dp = Array.new(N + 1, -10_000_000)
dp[0] = 0
A.each do |i|
  (C[i] .. N).each do |n|
    dp[n] = [ dp[n - C[i]] + 1, dp[n] ].max
  end
end
ans = Array.new(dp[N])
dp[N].times.inject(N) do |n, j|
  k = A.find do |i|
    dp[n - C[i]] + 1 == dp[n]
  end
  ans[j] = k
  n - C[k]
end
puts ans.join

