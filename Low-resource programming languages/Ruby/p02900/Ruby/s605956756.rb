a,b = gets.chomp.split.map(&:to_i)
require 'prime'

a_d = a.prime_division.map(&:first)
b_d = b.prime_division.map(&:first)

ans = a_d & b_d

puts ans.count + 1
