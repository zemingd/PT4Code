N,Q=gets.split.map &:to_i
G=Array.new(N){[]}
(N-1).times{
	a,b=gets.split.map &:to_i
	G[a-1]<<b-1
	G[b-1]<<a-1
}
A=[0]*N
B=[0]*N
C=[false]*N
Q.times{
	p,x=gets.split.map &:to_i
	A[p-1]+=x
}
def S(k,a)
	a+=A[k]
	B[k]=a
	C[k]=true
	G[k].each{|l|C[l]||S(l,a)}
end
S(0,0)
puts B*" "