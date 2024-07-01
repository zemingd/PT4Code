require "prime"
X = gets.to_i
p Prime.each.find{ |q| q >= X }