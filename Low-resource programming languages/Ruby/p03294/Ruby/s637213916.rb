require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

puts a_n.inject(&:+) - n
