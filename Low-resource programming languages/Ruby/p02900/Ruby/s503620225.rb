require 'prime'

a, b = gets.split.map(&:to_i)
ans =  a.gcd(b).prime_division.flatten.uniq.size
p ans <= 1 ? ans + 1 : ans
