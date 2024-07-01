#!/usr/bin/ruby
#encoding: utf-8

a,b,c = gets.split.map(&:to_i)

if b/a > c then
  puts c
else
  puts b/a
end
