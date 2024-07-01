a, b = gets.split.map(&:to_i)
max = [a, b].max
min = [a, b].min
puts max + [max - 1, min].max