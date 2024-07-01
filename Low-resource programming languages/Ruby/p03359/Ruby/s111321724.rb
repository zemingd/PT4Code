#!/usr/bin/ruby
#encoding: utf-8

a,b = gets.split.map(&:to_i)

if a <= b then
  puts a
else
  puts a-1
end
