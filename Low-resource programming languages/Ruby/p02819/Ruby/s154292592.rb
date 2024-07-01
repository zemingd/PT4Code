require 'prime'

X = gets.chomp.to_i
puts Prime.find { |p| p >= X }
