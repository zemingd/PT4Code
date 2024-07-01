N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

ans = A.inject(0) {|r,i| r + B[i-1] }
A.each_cons(2) {|i,j| ans += C[i-1] if i + 1 == j }
puts ans
