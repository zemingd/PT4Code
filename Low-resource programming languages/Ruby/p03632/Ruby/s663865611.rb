#!/usr/bin/env ruby

a, b, c, d = gets.strip.split().map(&:to_i)

if c - b >= 0 then
  puts 0
  exit
end

s = c
e = b > d ? d : b

puts e - s
