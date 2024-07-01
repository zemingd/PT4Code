n=gets.to_i
line=gets.chomp.split.map(&:to_i)
dp=[]
dp[0]=0
dp[1]=(line[0]-line[1]).abs
2.upto(n-1) do |i|
  dp[i]=[dp[i-1]+(line[i-1]-line[i]).abs,dp[i-2]+(line[i-2]-line[i]).abs].min
end  
puts dp[n-1]
