N,M=gets.split.map(&:to_i)
a = Hash.new
M.times do
  a[gets.to_i] = true
end
MOD = 10**9 + 7
dp = Array.new(N+10, 0)
dp[0] = 1
N.times do |i|
  if a[i]
    dp[i] = 0
  else
    dp[i+1] += dp[i] if !a[i+1]
    dp[i+2] += dp[i] if !a[i+2]
  end
end

p dp[N]%MOD

