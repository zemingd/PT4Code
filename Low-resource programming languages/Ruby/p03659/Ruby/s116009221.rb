#!/usr/bin/env ruby

n = gets.to_i
v = gets.split(' ').map{|i|i.to_i}

puts (1..v.length-1).map{|i|
  x = v.slice(0, i).inject(:+)
  y = v.slice(i, v.length-i).inject(:+)
  (x - y).abs
}.min