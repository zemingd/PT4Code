require 'prime'
a,b = gets.split.map(&:to_i)
p a.gcd(b).prime_division.count+1