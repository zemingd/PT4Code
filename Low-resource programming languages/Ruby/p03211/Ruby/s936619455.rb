#!/usr/bin/env ruby
n = STDIN.readline.strip

min = 999
for i in 0..n.size-2 do
  ni = n[i..i+2].to_i
  diff = (753 - ni).abs
  min = diff if min > diff
end
puts min
