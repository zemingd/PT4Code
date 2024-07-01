require 'prime'

A, B = gets.chomp.split.map(&:to_i)
gcd = A.gcd(B)
puts Prime.prime_division(gcd).length + 1
