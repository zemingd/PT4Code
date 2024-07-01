N, L = gets.split.map &:to_i
a = [*L...L+N]
p a.inject(:+) - a.min_by(&:abs)