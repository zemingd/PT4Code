#!/usr/bin/env ruby
a, b, n = STDIN.readline().strip().split(' ').map(&:to_i)
l = []
while line=gets do
  l << line.strip.split(' ').map(&:to_i)
end
r = [[0, a], [0, b]]
l.each do |x, y, a|
  case a
    when 1
    r[0][0] = x
    when 2
    r[0][1] = x
    when 3
    r[1][0] = y
    when 4
    r[1][1] = y
  end
end
s = [r[0][1] - r[0][0], 0].max * [r[1][1] - r[1][0], 0].max
puts s
