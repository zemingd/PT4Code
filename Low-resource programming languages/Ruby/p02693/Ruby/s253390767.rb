#!/usr/bin/env ruby
k = gets.chomp.to_i
a, b = gets.chomp.split(' ').map(&:to_i)

puts (b - a + 1) / k > 0 ? 'OK' : 'NG'
