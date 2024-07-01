MOD=10**9+7
n,m=gets.split.map(&:to_i)
dp=[0]*(n+1)
dp[0]=1
m.times {dp[gets.to_i] = nil}

(0..n).each do |i|
  unless dp[i].nil?
    dp[i]+=dp[i-1] unless dp[i-1].nil?
    dp[i]+=dp[i-2] unless dp[i-2].nil?
  end
end

p dp[n]%MOD