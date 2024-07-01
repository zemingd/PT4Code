require 'prime'
A,B = gets.split(" ").map(&:to_i)
a = A.prime_division.transpose[0]
b = B.prime_division.transpose[0]
puts (a & b).length + 1