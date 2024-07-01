N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
puts A[-M]*4*M < A.inject(:+) ? :No : :Yes