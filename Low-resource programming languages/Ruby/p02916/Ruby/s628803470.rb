N = gets.to_i
A,B,C = 3.times.map{gets.split.map(&:to_i)}

sum = B.inject(:+)
(N-1).times {|i| sum += C[A[i]-1] if A[i]+1 == A[i+1]}
p sum