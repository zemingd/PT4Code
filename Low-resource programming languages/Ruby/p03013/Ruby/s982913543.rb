n,m=gets.chomp.split(" ").map{|s| s.to_i}
a=[]
for i in 0..m-1
  a[i]=gets.chomp.to_i
end

dp=[]
for i in 0..n
  dp[i]=0
end

dp[0]=1

if a[0]==1
  dp[1]=0
else
  dp[1]=1
end

u=[*2..n]-a

u.each do |i|
    dp[i]=dp[i-1]+dp[i-2]
end
puts dp[n]%1000000007