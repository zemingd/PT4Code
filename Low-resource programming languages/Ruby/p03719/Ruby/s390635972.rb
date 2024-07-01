#!/usr/bin/env ruby

a, b, c = gets.split.map {|n| n.to_i }

if c <= a + b * 2
  puts 'Yes'
else
  puts 'No'
end
