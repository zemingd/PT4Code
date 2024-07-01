n,m=gets.chomp.split.map(&:to_i)
DOM=1000000007
dp=[]
dp[0]=1
dp[1]=1
m.times do |i|
  dp[gets.to_i]=0
end

2.upto(n) do |i|
  if dp[i]== 0
    next
  end
  dp[i]=dp[i-2]+dp[i-1]
end  
puts dp[n]%DOM