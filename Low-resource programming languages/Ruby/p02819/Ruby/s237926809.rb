require 'prime'
x = gets.to_i
puts Prime.find {|p| p >= x }
