N, M = gets.chomp.split(" ").map(&:to_i)
puts N * (N-1) / 2 + M * (M-1) / 2
