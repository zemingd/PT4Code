require 'prime'
target=gets.to_i
puts Prime.find {|p| p >= target }