N = gets.to_i
Ps, Qs = readlines.map{|l| l.split.map(&:to_i)}

puts ([*1 .. N].permutation(N).find_index(Ps) - [*1 .. N].permutation(N).find_index(Qs)).abs