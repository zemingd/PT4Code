require 'prime'
require "set"
a,b = gets.chomp.split(" ").map(&:to_i)

min = a < b ? a : b
count = 1
Prime.each(Math.sqrt(min)).to_a.each do |i|
  p_a = a / i
  p_b = b / i
  count += 1 if p_a * i == a && p_b * i == b
end

puts count
