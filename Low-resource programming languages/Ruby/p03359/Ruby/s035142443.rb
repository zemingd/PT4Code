require 'pp'

a, b = gets.chomp!.split(" ").map(&:to_i)

puts a - 1 + (a <= b ? 1 : 0)
