_,_,K = gets.split.map(&:to_i)
A = [*gets.split.map(&:to_i),K+1]
B = [0,*gets.split.map(&:to_i),K+1]

n,k,a,b = 0,K-A.sum,A.size,0
begin
	(a-=1; k+=A[a]) while 0<a && k<B[b]
	(k-=B[b]; b+=1) while B[b]<=k
	n = a+b-1 if n<a+b-1
end while 0<a
p n
