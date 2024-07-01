#!/usr/bin/ruby
#encoding: utf-8

a,b,c,d = gets.split.map(&:to_i)
s = [b,d].min - [a,c].max
if s >= 0 
  puts s
else
  puts 0
end
