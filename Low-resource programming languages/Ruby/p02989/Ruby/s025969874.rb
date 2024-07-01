N = gets.strip.to_i
A = gets.strip.split.map(&:to_i).sort

m = N / 2
puts A[m] - A[m - 1] 