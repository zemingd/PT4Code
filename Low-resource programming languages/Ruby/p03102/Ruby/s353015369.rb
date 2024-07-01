N, M, C = gets.split.map(&:to_i)
bm = gets.split.map(&:to_i)

p (1..N).count {(gets.split.map(&:to_i).zip(bm).map{ |a, b| a * b }.sum + C) > 0}