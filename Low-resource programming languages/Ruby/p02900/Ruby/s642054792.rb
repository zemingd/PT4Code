A, B = gets.split.map!(&:to_i)

require 'prime'

puts (A.prime_division.map!(&:first) & B.prime_division.map!(&:first)).size + 1
