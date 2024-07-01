#!/usr/bin/env ruby

d, n = gets.chomp.split(/ /)
d = d.to_i
n = n.to_i
n += 1 if n == 100
if (d == 0)
  num = n
elsif (d == 1)
  num = n * 100
else
  num = 100 * 100 * n
end

puts num
