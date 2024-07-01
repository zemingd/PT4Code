#!/usr/bin/env ruby
a, b, c, d = gets.chomp.split.map(&:to_i)

while true
  c -= b
  break if c <= 0

  a -= d
  break if a <= 0
end

puts c <= 0 ? 'Yes' : 'No'
