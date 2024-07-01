N, A, B = gets.split.map(&:to_i)
p(B&1 == A&1 ?
	(B-A)/2 :
	[[A+B,N-A+N-B].min/2, [B,N-A].min-1].min
)
