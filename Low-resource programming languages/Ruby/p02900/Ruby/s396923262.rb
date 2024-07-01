require 'prime'
A,B = gets.split.map(&:to_i)
puts A.gcd(B).prime_division.size + 1