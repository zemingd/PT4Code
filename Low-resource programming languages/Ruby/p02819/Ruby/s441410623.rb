X = gets.to_i

require 'prime'
puts Prime.find{|x| x >= X}