N, M = gets.split.map(&:to_i)

even = (1..M).to_a.combination(2).to_a.size
even += (1..N).to_a.combination(2).to_a.size

puts even
