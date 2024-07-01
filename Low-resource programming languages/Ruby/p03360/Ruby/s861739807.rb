A = gets.chomp.split(" ").map(&:to_i)
K = gets.to_i

m = A.max
puts A.inject(:+) - m + (m << K)
