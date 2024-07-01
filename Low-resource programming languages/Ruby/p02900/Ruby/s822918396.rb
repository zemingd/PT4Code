require 'prime'

a, b = gets.chomp.split.map(&:to_i)
g = a.gcd(b)
puts Prime.prime_division(g).size + 1