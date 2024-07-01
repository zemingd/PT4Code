(N,M,K),A,B = $<.map{|ln| ln.split.map(&:to_i) }
A << K+1
B << K+1

a,b,k = 0,0,K
(k-=A[a]; a+=1) while A[a]<=k
(k-=B[b]; b+=1) while B[b]<=k
nmax = a+b
while 0<a
	(a-=1; k+=A[a]) while 0<a && k<B[b]
	(k-=B[b]; b+=1) while B[b]<=k
	nmax = a+b if nmax<a+b
end
p nmax
