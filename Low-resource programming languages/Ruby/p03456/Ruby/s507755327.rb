#!/usr/bin/env ruby
A,B = gets.chomp.split.map(&:to_s)
n = (A+B).to_i
if Math.sqrt(n).to_i * Math.sqrt(n).to_i == n
  puts "Yes"
else
  puts "No"
end