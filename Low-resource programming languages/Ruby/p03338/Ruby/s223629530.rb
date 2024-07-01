require "set"
n = gets.chomp.to_i
s = gets.chomp

max = 0
(0..(n-2)).each do |i|
  x = s[0..i]
  y = s[(i+1)..-1]
  x_set = Set.new(x.split("").to_a)
  y_set = Set.new(y.split("").to_a)
  len = x_set.intersection(y_set).length
  max = len if len > max
end

puts max
