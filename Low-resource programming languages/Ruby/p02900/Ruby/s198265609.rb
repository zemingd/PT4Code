require 'prime'
a,b = gets.split.map(&:to_i)
a_prime = a.prime_division.map{|a| a[0]}
b_prime = b.prime_division.map{|b| b[0]}
prime = a_prime & b_prime
prime << 1
p prime.count