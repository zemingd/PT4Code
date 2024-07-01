#!/usr/bin/env ruby

def grading(m, f, r)
  return 'F' if m * f < 0 || m + f < 30
  return 'A' if m + f >= 80
  return 'B' if m + f >= 65
  return 'C' if m + f >= 50 || r >= 50
  'D'
end

while (m, f, r = gets.chomp.split.map(&:to_i)) != [-1, -1, -1]
  puts grading(m, f, r)
end