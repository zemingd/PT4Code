n=gets.to_i
h=gets.split.map(&:to_i)

dp=Array.new(n+1,0)
dp[1]=(h[1]-h[0]).abs
1.upto(n-2) do |i|
    dp[i+1]=[dp[i]+(h[i+1]-h[i]).abs,dp[i-1]+(h[i+1]-h[i-1]).abs].min
end
puts dp[n-1]
