require 'prime'

tmp = gets.split(" ").map{|i| i.to_i}
A = tmp[0]
B = tmp[1]
GCD = A.gcd(B)
CD = Prime.prime_division(GCD)

puts CD.length + 1