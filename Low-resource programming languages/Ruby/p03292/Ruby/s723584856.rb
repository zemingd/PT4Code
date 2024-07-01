require 'pp'

a1, a2, a3 = gets.chomp!.split(" ").map(&:to_i)

puts [
    (a1 - a2).abs + (a2 - a3).abs,
    (a1 - a3).abs + (a3 - a2).abs,
    (a2 - a3).abs + (a3 - a1).abs
].min
