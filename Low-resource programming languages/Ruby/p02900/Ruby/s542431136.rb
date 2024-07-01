require 'prime'
A, B = gets.split.map(&:to_i)
N = Prime.prime_division(A.gcd(B))

print N.length + 1
puts