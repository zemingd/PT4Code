require 'pp'

a, b, c = gets.chomp!.split(" ").map(&:to_i).sort
k = gets.chomp!.to_i

puts a + b + c * (2 ** k)
