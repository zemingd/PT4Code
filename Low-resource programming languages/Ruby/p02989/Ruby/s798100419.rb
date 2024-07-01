N = gets.to_i
D = gets.split.map(&:to_i).sort

puts D[N / 2] - D[N / 2 - 1]
