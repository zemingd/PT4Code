n, k = gets.split.map &:to_i
h = gets.split.map(&:to_i).sort
h.pop [n, k].min
p h.sum