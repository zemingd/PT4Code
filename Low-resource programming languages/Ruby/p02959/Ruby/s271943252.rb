N = gets.to_i
A = gets.split.map(&:to_i) # N+1
B = gets.split.map(&:to_i) # N

A0 = A.inject(&:+)
(0..(N/2)).each{|i|
	A[i], B[i] = (A[i] < B[i]) ? [0, B[i]-A[i]] : [A[i]-B[i], 0]
	A[N-i], B[N-i-1] = (A[N-i] < B[N-i-1]) ? [0, B[N-i-1]-A[N-i]] : [A[N-i]-B[N-i-1], 0]
}
A1 = A.inject(&:+)

p A0-A1
