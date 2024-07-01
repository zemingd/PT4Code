(N,M,K),A,B = $<.map{|ln| ln.split.map(&:to_i) }

n,k,a = 0,K,[]
while 0<A.size && A[0]<=k
	k -= A[0]
	n += 1
	a << A.shift
end
while 0<B.size && B[0]<=k
	k -= B[0]
	n += 1
	B.shift
end
nmax = n
begin
	if 0<a.size
		k += a[-1]
		n -= 1
		a.pop
	end
	while 0<B.size && B[0]<=k
		k -= B[0]
		n += 1
		B.shift
	end
	nmax = n if nmax<n
end while 0<a.size && 0<B.size
p nmax
