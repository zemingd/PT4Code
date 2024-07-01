A = gets.split.map(&:to_i)

A.sort!
puts A[2]-A[1] + A[1]-A[0]