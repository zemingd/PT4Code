n, m = gets.split.map(&:to_i)
as   = m.times.map{ gets.to_i }

MOD = 1000000007

if as.size > 0 and as[0] == 1
  dp = [1, 0]
  j = 1
else
  dp = [1, 1]
  j = 0
end

#
# i: dpを探索
# j: asを探索(なので一致したらインクリメント)
2.upto(n) do | i |
  if j < as.size and as[j] == i
    dp[i] = 0
    j += 1
  else
    dp[i] = (dp[i-1] + dp[i-2])
  end
end

p dp[n] % MOD