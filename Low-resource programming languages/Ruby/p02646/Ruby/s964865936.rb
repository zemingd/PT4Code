#!/usr/bin/env ruby
a, v = gets.chomp.split.map(&:to_i)
b, w = gets.chomp.split.map(&:to_i)
t = gets.to_i

if (v - w) * t >= (b - a).abs
  puts 'YES'
else
  puts 'NO'
end
