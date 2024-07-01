a, b, c = gets.chomp.split.map(&:to_i)

puts (a - b) >= c ? 0 : ((a - b) - c).abs
