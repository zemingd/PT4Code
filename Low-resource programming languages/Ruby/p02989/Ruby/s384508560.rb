N = gets.to_i
A = gets.split.map(&:to_i).sort
puts A[N/2] - A[N/2-1]