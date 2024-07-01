require 'prime'
A, B = gets.split.map(&:to_i)
gcd = A.gcd B
puts Prime.prime_division(gcd).size + 1