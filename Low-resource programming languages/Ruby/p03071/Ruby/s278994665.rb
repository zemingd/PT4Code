A = gets.split.map(&:to_i)
p A[0] == A[1] ? A[0]*2 : A.max*2 -1 