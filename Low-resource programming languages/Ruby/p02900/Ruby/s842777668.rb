require 'prime'
a, b = gets.split.map(&:to_i)
puts a.gcd(b).prime_division.size + 1
