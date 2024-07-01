require 'prime'
A, B = gets.split(' ').map{|n| n.to_i}
puts (A.prime_division.map{|n| n[0]} & B.prime_division.map{|n| n[0]}).length + 1
