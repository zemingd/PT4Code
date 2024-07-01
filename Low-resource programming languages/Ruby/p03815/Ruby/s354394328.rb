x = gets.chomp.to_i
puts(x / 11 * 2 + (x % 11 == 0 ? 0 : x % 11 <= 6 ? 1 : 2))