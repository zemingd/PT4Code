require 'prime'
X = gets.to_i
puts Prime.each(10 ** 6).find {|x| x >= X}