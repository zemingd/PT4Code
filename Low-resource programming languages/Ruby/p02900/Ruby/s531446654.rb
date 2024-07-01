require 'prime'
A,B = gets.split(" ").map(&:to_i)
puts A.gcd(B).prime_division.transpose[0].count + 1