require 'prime'

a, b = gets.split.map(&:to_i)
ans =  a.gcd(b).prime_division.flatten << 1
ans = ans.uniq.size
p ans <= 1 ? ans + 1 : ans
