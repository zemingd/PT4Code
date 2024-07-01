require 'prime'
A, B = gets.chomp.split.map(&:to_i)
puts Prime.prime_division(A.gcd(B)).map(&:first).size.next
