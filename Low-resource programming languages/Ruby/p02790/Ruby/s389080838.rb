#!/usr/bin/env ruby
a, b = gets.chomp.split(' ') #.map(&:to_s)

aa = a * b.to_i
bb = b * a.to_i

puts (aa > bb) ? bb : aa

