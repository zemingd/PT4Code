require "prime"
x = gets.to_i
p Prime.find {|p| p >= x }
