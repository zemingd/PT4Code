n,k=gets.split.map &:to_i
r=[0]*-~n
n.times{
	a,b=gets.split.map &:to_i
	r[a]+=b
}
(0..n).find{|i|0>=k-=r[i]}