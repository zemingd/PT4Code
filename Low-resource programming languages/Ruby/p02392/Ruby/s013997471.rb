#!/usr/bin/env ruby
n = gets.split(' ')
n.each_with_index do |str, index|
  n[index] = str.to_i
end
if (n[0] < n[1]) && (n[1] < n[2])
  puts "Yes"
else
  puts "No"
end

