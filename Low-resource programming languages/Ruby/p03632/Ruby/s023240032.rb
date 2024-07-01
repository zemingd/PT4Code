#!/usr/bin/env ruby

a, b, c, d = gets.strip.split().map(&:to_i)

def calc(s1, e1, s2, e2)
  return 0 if e1 <= s2
  e = e1 > e2 ? e2 : e1
  e - s2
end

if a < c then
  puts calc(a, b, c, d)
else
  puts calc(c, d, a, b)
end
