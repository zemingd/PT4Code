require 'bigdecimal'
require 'bigdecimal/util'

a, b = gets.split(' ').map(&:to_i)
puts "#{a / b} #{a % b} #{(a.to_d / b.to_d).to_f}"
