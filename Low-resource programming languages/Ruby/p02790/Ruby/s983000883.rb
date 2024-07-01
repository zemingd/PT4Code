require 'pp'

a, b = gets.chomp!.split.map(&:to_i)

puts [a.to_s * b, b.to_s * a].sort[0]

