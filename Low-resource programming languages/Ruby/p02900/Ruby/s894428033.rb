require 'prime'
A, B = gets.split(" ").map(&:to_i)
gcd = A.gcd(B)

ans = Prime.prime_division(gcd)

puts ans.size + 1
