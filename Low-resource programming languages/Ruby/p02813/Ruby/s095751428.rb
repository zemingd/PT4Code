n = gets.to_i
a = (1..n).to_a.permutation(n).to_a
p (a.index(gets.split.map(&:to_i)) - a.index(gets.split.map(&:to_i))).abs