A = gets.split.map(&:to_i).sort
K = gets.to_i
puts A[0] + A[1] + A[2] * (K + 1)