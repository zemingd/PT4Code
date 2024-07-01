require 'prime'
A, B = gets.split.map(&:to_i)
p A.gcd(B).prime_division.size + 1