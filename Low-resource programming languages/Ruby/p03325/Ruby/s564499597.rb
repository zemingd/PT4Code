require 'prime'

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.map { |a|
    a.prime_division.to_h[2] || 0
}.sum