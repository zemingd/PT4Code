#!/usr/bin/env ruby

input = gets.chomp.split("")

if input.uniq.count == 1
  puts "No"
else
  puts "Yes"
end
