require 'pp'
require 'set'

n = gets.chomp!.to_i
d_n = gets.chomp!.split(" ").map(&:to_i).sort!

puts (d_n[n / 2] - d_n[n / 2 - 1])
