A, B = gets.split.map &:to_i
C = A.gcd(B)
require 'prime'
p Prime.prime_division(C).size + 1