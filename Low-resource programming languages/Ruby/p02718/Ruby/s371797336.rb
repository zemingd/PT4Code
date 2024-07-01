N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
puts A[N-M]<A.sum/(4*M) ? "No" : "Yes"