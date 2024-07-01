a, b, c, k = gets.split.map(&:to_i)

puts [a, k].min - [0, k - a - b].max
