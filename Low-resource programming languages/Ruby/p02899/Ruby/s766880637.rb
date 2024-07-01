N = gets.to_i
A = gets.split.map &:to_i
puts A.map.with_index(1).sort.map(&:last) * " "