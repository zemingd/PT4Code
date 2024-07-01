#!/usr/bin/env ruby

(n, m) = gets.chomp.split(/ /).map(&:to_i)
x = gets.chomp.split(/ /).map(&:to_i)

if m == 1
  puts 0
  exit
end

x.sort!
array = []
(0..(m - 2)).each do |i|
  array << (x[i] - x[i + 1]).abs
end
array.sort!
(n - 1).times do
  array.pop
end

res = array.inject(0){|sum, enum| sum += enum}
puts res
