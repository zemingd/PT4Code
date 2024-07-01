n = gets.to_i
a = gets.split.map(&:to_i)

dp = Array.new(n+1){[]}
dp[2][0] = a[0].gcd(a[1])
dp[2][1] = a[0,2].max
2.upto(n-1) do |i|
  dp[i+1][0] = dp[i][0].gcd(a[i])
  t = dp[i][1].gcd(a[i])
  dp[i+1][1] = dp[i][0] > t ? dp[i][0] : t
end
p dp[n][1]
