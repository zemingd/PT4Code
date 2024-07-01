N,M=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)
ma=[100,2,5,5,4,5,6,3,7,6]
dp=Array.new(N+7,-100)
dp[6]=0
for i in 7..N+6
	max=-100
	A.each{|e|
		max=[max,dp[i-ma[e]]+1].max
	}
	dp[i]=max
end
A.sort!.reverse!
j=N+6
while j>6
	for i in 0..A.size-1
		if dp[j]==dp[j-ma[A[i]]]+1
			j-=ma[A[i]]
			print A[i]
			break
		end
	end
end