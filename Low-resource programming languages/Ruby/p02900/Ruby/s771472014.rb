require 'prime'
require "set"
a,b = gets.chomp.split(" ").map(&:to_i)

max = a > b ? a : b
set = Prime.each(max).to_set
count = 1
(2..Math.sqrt(max)).each do |i|
  p_a = a / i
  p_b = b / i
  count += 1 if p_a * i == a && p_b * i == b && set.include?(i)
end

puts count
