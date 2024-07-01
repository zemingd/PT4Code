require 'prime'

a,b = gets.split.map(&:to_i)

gcd = a.gcd(b)
ret = Prime.prime_division(gcd).count + 1
p ret
