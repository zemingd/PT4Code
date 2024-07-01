A, B, C = gets.chomp.split.map(&:to_i)

puts [C + B - A, 0].max
