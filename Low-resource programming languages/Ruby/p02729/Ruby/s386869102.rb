N,M = gets.split.map(&:to_i)

n = (1..N).to_a.combination(2).to_a.size
m = (1..M).to_a.combination(2).to_a.size

p n + m
