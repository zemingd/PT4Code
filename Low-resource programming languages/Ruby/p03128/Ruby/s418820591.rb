N,M=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)
ma=[100,2,5,5,4,5,6,3,7,6]
dp=Array.new(N+1,0)
A.each{|e|dp[ma[e]]=[dp[ma[e]],e].max}
for i in 1..N
	cand=[]
	A.each{|e|
		if dp[i-ma[e]]!=0
			cand<<(e.to_s+dp[i-ma[e]].to_s).to_i
		end
	}
	if !cand.empty?
		dp[i]=cand.max
	end
	if i>=8
		dp[i-8]=0
	end
end
puts dp[N]