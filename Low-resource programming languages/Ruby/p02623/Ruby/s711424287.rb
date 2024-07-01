(N,M,K),A,B = $<.map{|ln| ln.split.map(&:to_i) }

a,b,k = 0,0,K
(k-=A[a]; a+=1) while a<A.size && A[a]<=k
(k-=B[b]; b+=1) while b<B.size && B[b]<=k
nmax = a+b
while 0<a && b<B.size
	(a-=1; k+=A[a]) while 0<a && k<B[b]
	(k-=B[b]; b+=1) while b<B.size && B[b]<=k
	nmax = a+b if nmax<a+b
end
p nmax
