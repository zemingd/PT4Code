n=gets.to_i
h=gets.chomp.split(" ").map(&:to_i)
dp=Array.new(n)
dp[0]=0
dp[1]=(h[0]-h[1]).abs
for i in 2..n-1
	way1=dp[i-1]+(h[i]-h[i-1]).abs
	way2=dp[i-2]+(h[i]-h[i-2]).abs
	if(way1>way2)
		dp[i]=way2
	else
		dp[i]=way1
	end
end
p dp[n-1]