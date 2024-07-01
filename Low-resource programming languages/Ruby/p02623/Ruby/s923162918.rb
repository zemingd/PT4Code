(N,M,K),A,B = $<.map{|ln| ln.split.map(&:to_i) }

n,k,a = 0,K,[]
while 0<A.size && A[0]<=k
	a << A[0]
	k -= A.shift
	n += 1
end
while 0<B.size && B[0]<=k
	k -= B.shift
	n += 1
end
nmax = n
while 0<a.size && 0<B.size
	while 0<a.size && k<B[0]
		k += a.pop
		n -= 1
	end
	while 0<B.size && B[0]<=k
		k -= B.shift
		n += 1
	end
	nmax = n if nmax<n
end
p nmax
