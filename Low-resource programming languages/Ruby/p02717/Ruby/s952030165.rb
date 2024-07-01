require 'pp'

x, y, z = gets.split.map(&:to_i)

y, x = x, y
z, x = x, z

puts "#{x} #{y} #{z}"
