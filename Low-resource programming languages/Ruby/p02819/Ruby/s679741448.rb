require 'prime'
x = gets.chop.to_i
puts Prime.find { |p| p >= x }