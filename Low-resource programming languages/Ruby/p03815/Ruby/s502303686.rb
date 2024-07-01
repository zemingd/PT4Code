require 'pp'

x = gets.chomp!.to_i
sum = 2 * (x / 11) + ((x % 11 > 6) ? 2 : 1)

puts sum
