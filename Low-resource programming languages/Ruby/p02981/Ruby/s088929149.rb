N, A, B = gets.split.map(&:to_i)
min = N * A < B ? N * A : B

puts min
