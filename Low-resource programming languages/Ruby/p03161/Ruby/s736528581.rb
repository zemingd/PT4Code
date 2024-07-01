n,k=gets.chomp.split.map(&:to_i)
line=gets.chomp.split.map(&:to_i)
INF=10**12
dp=Array.new(n,INF)
dp[0]=0
1.upto(n-1) do |i|
  [0,i-k].max.upto(i-1) do |l|
    dp[i]=[dp[l]+(line[l]-line[i]).abs,dp[i]].min
  end  
end  
puts dp[-1]