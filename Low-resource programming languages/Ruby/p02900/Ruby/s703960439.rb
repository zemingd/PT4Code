require 'prime'
a,b=gets.chomp.split(" ").map(&:to_i)
x=a.gcd(b)
factors = x.prime_division
puts factors.length+1