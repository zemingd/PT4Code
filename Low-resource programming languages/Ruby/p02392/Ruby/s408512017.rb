# -*- coding: utf-8 -*-

a,b,c = STDIN.gets.split.map(&:to_i)

if a < b < c
  puts "Yes"
else
  puts "No"
end