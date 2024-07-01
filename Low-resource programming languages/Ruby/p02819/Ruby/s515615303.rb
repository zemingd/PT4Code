require 'prime'

x = gets.to_i
x += 1 until x.prime?

puts x
