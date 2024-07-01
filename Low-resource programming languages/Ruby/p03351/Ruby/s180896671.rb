#!/usr/bin/ruby 
#encoding: utf-8

a,b,c,d = gets.split.map(&:to_i)

ab = (a-b).abs
bc = (b-c).abs
ac = (a-c).abs

if ( ab <= d or bc <= d ) or ac <=d then
  puts "Yes"
else
  puts "No" 
end
