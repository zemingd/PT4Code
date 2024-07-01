require 'prime'

a, b = gets.chop.split.map(&:to_i)
puts a.gcd(b).prime_division.length + 1
