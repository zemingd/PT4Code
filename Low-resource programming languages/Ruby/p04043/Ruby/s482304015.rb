#!/usr/bin/ruby
#encoding: utf-8

ary = gets.split.map(&:to_i)
ary.sort!
if ary[0] == 5 and ary[1] == 5 and ary[2] == 7
  puts "YES"
else
  puts "NO"
end

