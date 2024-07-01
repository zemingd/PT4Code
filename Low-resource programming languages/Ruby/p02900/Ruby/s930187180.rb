require 'prime'
a,b=gets.split.map(&:to_i)
p Prime.prime_division(a.gcd(b)).size+1