a = gets.split.map &:to_i
p a.combination(2).map(&:sum).min