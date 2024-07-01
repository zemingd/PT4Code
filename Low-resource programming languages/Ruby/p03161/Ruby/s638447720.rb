n,k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

# dp = Array.new(n, 0)
dp = [0,0]

for i in 2..n
  # dp[i] = dp[i-1] + (hs[i-2] - hs[i-1]).abs
  dp << dp[i-1] + (hs[i-2] - hs[i-1]).abs
  for j in (1..[i-1,k].min)
    tmp = dp[i-j] + (hs[i-j-1] - hs[i-1]).abs
    # dp[i] = tmp if dp[i] > tmp
    if dp[i] > tmp
      dp[i] = tmp
    end
  end
end

puts dp[n]
