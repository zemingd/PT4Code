n,m=gets.chomp.split.map(&:to_i)
DOM=1000000007
broken=[]
dp=[]
m.times do |i|
  broken<<gets.to_i
end
dp[0]=1
if broken.include?(1)
  dp[1]=0
else
  dp[1]=1
end  
2.upto(n) do |i|
  if broken.include?(i)
    dp[i]=0
  else
    dp[i]=dp[i-2]+dp[i-1]
  end  
end  
puts dp[n]%DOM