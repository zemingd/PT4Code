n=gets.to_i
h=gets.chomp.split(" ").map(&:to_i)
$memo=Array.new(n)
def DP(i,h)
	return $memo[i] if($memo[i]!=nil)
	way1=DP(i-1,h)+(h[i]-h[i-1]).abs
	way2=DP(i-2,h)+(h[i]-h[i-2]).abs if(i>1)
	if(way1<way2)
		$memo[i]=way1
	else
		$memo[i]=way2
	end
	return $memo[i]
end
$memo[0]=0
$memo[1]=(h[1]-h[0]).abs
print DP(n-1,h)