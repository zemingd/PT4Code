#!/usr/bin/ruby

num = STDIN.gets.to_i

num.times do |i|
  x1, y1, x2, y2, x3, y3, x4, y4 = STDIN.gets.split().map!{|i| i.to_f}
  puts (x3 - x1)/(y3 - y1) == (x4 - x2)/(y4 - y2) ? "YES" : "NO"
end