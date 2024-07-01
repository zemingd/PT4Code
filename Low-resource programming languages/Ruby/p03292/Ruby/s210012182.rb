#!/usr/bin/ruby 
#encoding: utf-8

a = gets.split.map(&:to_i)
a.sort!.reverse!
ans = (a[0] - a[1]) + (a[1] - a[2]) 
puts ans 
