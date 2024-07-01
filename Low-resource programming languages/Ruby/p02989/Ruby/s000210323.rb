#!/usr/bin/ruby
#encoding: utf-8

#input
n = gets.to_i
d = gets.split.map(&:to_i)

d.sort!
s = d[n/2] - d[n/2 - 1]

if s >= 0
  puts s
else
  puts 0
end