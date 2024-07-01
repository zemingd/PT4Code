a, b = gets.split.map(&:to_i)
p [a, b].max * 2 - (a == b ? 0 : 1)
