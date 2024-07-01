require 'bigdecimal'
require 'bigdecimal/util'
a, b = gets.split.map(&:to_i)

puts (a/b).to_s + " " + (a%b).to_s + " " + (a.to_f / b.to_f).to_d.to_s

