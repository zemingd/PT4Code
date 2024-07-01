N, A, B = gets.strip.split.map(&:to_i)
puts(N * A < B ? N * A : B)