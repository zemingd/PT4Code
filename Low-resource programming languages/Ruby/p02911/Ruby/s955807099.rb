N, K, Q = gets.split.map(&:to_i)
A = [0] * N
Q.times{
	a = gets.to_i-1
	A[a] += 1
}
N.times{|a|
	puts(0 < K-Q+A[a] ? 'Yes' : 'No')
}
