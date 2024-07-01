require 'prime'

a = gets.to_i
puts Prime.find {|p| p >= a }
