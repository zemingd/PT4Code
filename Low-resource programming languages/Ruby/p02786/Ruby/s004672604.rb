#!/usr/bin/env ruby

h = gets.to_i
n1 = 1
n2 = 1

while true
  h /= 2
  n1 *= 2
  n2 += n1
  break if h == 1
end

ans = n2
puts ans

