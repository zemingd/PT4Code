MOD = 1_000_000_007
N, M = gets.split.map(&:to_i)
A = M.times.map{gets.to_i}.group_by(&:itself)
dp = [0,1]
(1 .. N).each do |h|
  a,b = dp
  if A[h]
    dp[0] = b
    dp[1] = 0
  else
    dp[0] = b
    dp[1] = (a + b) % MOD
  end
end
puts dp[1]
