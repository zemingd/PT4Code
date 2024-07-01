n,k=gets.split.map &:to_i
r=[0]*10**6
n.times{
	a,b=gets.split.map &:to_i
	r[a]+=b
}
p (1..n).find{|i|0>=k-=r[i]}