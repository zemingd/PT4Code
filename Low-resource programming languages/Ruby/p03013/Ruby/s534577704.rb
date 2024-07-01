n,m = gets.split.map(&:to_i)
a = readlines.map(&:to_i)
dp = Array.new(n+1)
dp[0] = 1
MOD = 10**9 + 7
if a.count(1) != 0
  dp[1] = 0
else
  dp[1] = 1
end
for i in 2..n
  if a.count(i) != 0
    dp[i] = 0
  else
    dp[i] = dp[i-1] + dp[i-2]
  end
end
puts dp[n].modulo(MOD)