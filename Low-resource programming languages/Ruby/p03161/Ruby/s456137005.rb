n,k=gets.chomp.split.map(&:to_i)
line=gets.chomp.split.map(&:to_i)
INF=10**9
dp=Array.new(n,INF)
dp[0]=0
1.upto(n-1) do |i|
  t = i - k
  t = 0 if t < 0
  t.upto(i-1) do |l|
    dp[i]=[dp[l]+(line[l]-line[i]).abs,dp[i]].min
  end  
end  
puts dp[-1]
