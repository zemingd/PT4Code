N,M=gets.split.map(&:to_i)
as=Array.new(N+1,false)
M.times do
  as[gets.to_i]=true
end
dp=Array.new(N+1,0)
dp[0]=1
dp[1]=as[1] ? 0 : 1
for i in 2..N
  dp[i]+=dp[i-2] if !as[i-2]
  dp[i]+=dp[i-1] if !as[i-1]
  dp[i]%=1000000007
end
puts dp[N]