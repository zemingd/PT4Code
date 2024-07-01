N, A, B = gets.split.map(&:to_i)
p(B&1 == A&1 ?
	(B-A)/2 :
	[[A+B,N-A+N-B+1].min/2, [B-1,N-A].min].min
)
