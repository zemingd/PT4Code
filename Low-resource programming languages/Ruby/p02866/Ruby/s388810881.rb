A=[0]*2e5
`sed 1d`.split.map{A[_1.to_i]+=1}
s=q=0**D[A[0]-1]
A.map{s*=q**q=_1
s%=998244353}
p s