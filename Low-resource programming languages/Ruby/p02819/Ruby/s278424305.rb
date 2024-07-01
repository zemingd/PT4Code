require 'prime'

x = gets.to_i

puts Prime.find { |n| n >= x }
