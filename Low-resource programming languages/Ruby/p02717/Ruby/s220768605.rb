A = gets.chomp.split(" ").map(&:to_i)

tmp = A[0]
A[0] = A[1]
A[1] = tmp

tmp = A[0]
A[0] = A[2]
A[2] = tmp

print "#{A[0]} #{A[1]} #{A[2]}"