a, b = gets.chomp.split(' ').map(&:to_i)

puts (a <= 5) ? 0 : (a <= 12) ? b / 2 : b
