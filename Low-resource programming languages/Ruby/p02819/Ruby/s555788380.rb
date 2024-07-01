require 'prime'

x = gets.to_i

puts ans = Prime.find {|p| p >= x }