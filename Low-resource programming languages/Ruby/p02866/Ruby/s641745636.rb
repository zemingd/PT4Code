eval"N,*D="+`dd`.split*?,
A=[0]*N
m=998244353
f=->a,b{b>0?a**b[0]*f[a,b/2]**2%m:1}
D.map{|d|A[d]+=1}
s=q=1
A.map{|a|s=s*f[q,q=a]%m}
p A[0]==1&&D[0]==0?s:0