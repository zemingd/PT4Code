require 'pp'

a, b = gets.chomp!.split(" ").map(&:to_i)

puts [a, b, 12].min
