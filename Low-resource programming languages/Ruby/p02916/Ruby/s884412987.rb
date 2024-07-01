N = gets.to_i
A = gets.split.map &:to_i
B = gets.split.map(&:to_i).reduce(:+)
C = gets.split.map &:to_i
p B + (0...N-1).reduce(0){ |a,i| a + (A[i+1] == A[i]+1 ? C[A[i]-1] : 0) }