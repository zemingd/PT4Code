A, B = gets.split.map(&:to_i)

require 'prime'

puts A.gcd(B).prime_division.count + 1