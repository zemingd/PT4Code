require 'prime'

a, b = gets.split.map(&:to_i)
d = a.gcd(b)
puts Prime.prime_division(d).length + 1
