require 'prime'
x = gets.chomp.to_i
x += 1 until x.prime?
puts x