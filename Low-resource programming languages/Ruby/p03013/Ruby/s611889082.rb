n,m = gets.split.map(&:to_i)
dp = (n+2).times.map{0}
dp[0] = 1
w = (n+2).times.map{true}
m.times.map{
  i = gets.to_i
  w[i] = false
}

mod = 10**9+7

n.times{|i|
  dp[i+1] += dp[i] if w[i+1]
  dp[i+1] %= mod
  dp[i+2] += dp[i] if w[i+2]
  dp[i+2] %= mod
}

p dp[n]
