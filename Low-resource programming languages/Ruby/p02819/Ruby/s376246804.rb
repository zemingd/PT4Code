#!/usr/bin/ruby

require 'prime'

p = gets.chomp.to_i

if p % 2 == 0
  p += 1
end

while(true)
  break if p.prime?
  p += 2
end

puts p
