require 'prime'
a, b = gets.chomp.split(" ").map(&:to_i)
d = a.gcd(b)
p d.prime_division.length + 1