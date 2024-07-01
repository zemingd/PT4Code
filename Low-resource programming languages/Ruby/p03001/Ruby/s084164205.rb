#!/usr/bin/env ruby

w, h, x, y = gets.chomp.split(/ /).map(&:to_i)

menseki = w.to_f * h.to_f / 2.0
ans = 0
if ((w.to_f / 2.0) == x.to_f && (h.to_f / 2.0) == y.to_f)
  ans = 1
end
print menseki
print " "
puts ans
