#!/usr/bin/ruby

s = gets.chomp.split(" ")

if s[0].to_i + s[1].to_i + s[2].to_i <= 21
  puts "win"
else
  puts "bust"
end

