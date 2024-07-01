nk=gets.chomp.split(" ").map(&:to_i)
h=gets.chomp.split(" ").map(&:to_i)
dp=Array.new(nk[0])
dp[0]=0
dp[1]=(h[0]-h[1]).abs
for i in 2..nk[0]-1
	min=dp[i-1]+(h[i]-h[i-1]).abs
	for j in 2..nk[1]
		break if(i-j<0)
		result=dp[i-j]+(h[i]-h[i-j]).abs
		min=result if(result<min)
	end
	dp[i]=min
end
p dp[nk[0]-1]