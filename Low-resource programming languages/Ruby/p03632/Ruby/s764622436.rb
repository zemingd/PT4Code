a, b, c, d = gets.chomp.split.map(&:to_i)

puts [[b, d].min - [a, c].max, 0].max