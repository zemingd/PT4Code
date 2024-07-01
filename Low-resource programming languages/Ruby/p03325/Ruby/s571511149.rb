require 'prime'

n = gets.to_i
seq = gets.chomp.split(" ").map(&:to_i)

p seq.inject(0){|sum,a| sum + a.prime_division.flatten.count(2)}