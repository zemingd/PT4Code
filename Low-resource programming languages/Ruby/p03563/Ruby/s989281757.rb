#!/usr/bin/ruby
input = STDIN.readlines
r, g = input.map{|l| l.chomp.split(/\s+/).map{|m| m.to_i}.flatten}.flatten
puts g+g-r
