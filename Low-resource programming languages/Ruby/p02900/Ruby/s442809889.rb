require 'pp'
require 'prime'

a, b = gets.split.map(&:to_i)

# p [a,b]
# p [a,b].map(&:prime_division)
#
# p a.prime_division.map{|x|x[0]}
# p b.prime_division.map{|x|x[0]}
#
p (a.prime_division.map{|x|x[0]} & b.prime_division.map{|x|x[0]}).size + 1

# 3 4 1
