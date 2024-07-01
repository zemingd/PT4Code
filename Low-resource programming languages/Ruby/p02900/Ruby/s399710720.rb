require 'prime'
a, b = gets.split.map(&:to_i)
c = a.gcd(b)
d = Prime.prime_division(c).transpose
puts d == [] ? 1 : d[0].length + 1