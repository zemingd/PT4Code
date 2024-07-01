x = gets.to_i

bar = (x % 11) <= 6 ? 1 : 2
puts (x / 11 * 2) + bar