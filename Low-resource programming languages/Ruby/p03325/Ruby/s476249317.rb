N = gets.to_i
A = gets.split.map(&:to_i)

require 'prime'

puts A.map{|x| Prime.prime_division(x).to_h.fetch(2, 0)}.inject(:+)