#!/usr/bin/env ruby

(a, b) = gets.chomp.split(/ /).map(&:to_i)

if a <= 5
  puts 0
elsif a <= 12
  puts (b / 2)
else 
  b
end