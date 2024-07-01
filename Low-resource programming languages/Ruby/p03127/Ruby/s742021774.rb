
require 'prime'
DBG = true
n = gets.to_i
a = gets.split.map{|z| z.to_i}
a.uniq!
z = a.inject{|x,y| x.gcd(y)}
puts "#{z}"
