# -*- encoding: utf-8 -*-

require 'scanf'
a = gets.scanf "%d %d"
 x = a[0]
 y = a[1]

 if x == y then
  puts "a == b"
 elsif x > y then
  puts "a > b"
 elsif x < y then
  puts "a < b"
 end