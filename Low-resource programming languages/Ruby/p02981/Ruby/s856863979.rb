N, A, B = gets.split.map(&:to_i)
puts N * A if N * A < B
puts B if N * A > B
puts B if N * A == B