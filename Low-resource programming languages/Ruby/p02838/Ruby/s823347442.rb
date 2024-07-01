N=gets.to_i
A=gets.split.map(&:to_i)

MOD=10**9+7

ans=0

(0...60).each do |i|
	count=[0,0]
	A.each do |a|
		count[a[i]]+=1 
	end
	ans=(ans+count[0]*count[1]*(1<<i))%MOD
end
p ans