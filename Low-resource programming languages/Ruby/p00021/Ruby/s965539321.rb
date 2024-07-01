#!/usr/bin/ruby

num = STDIN.gets.to_i

num.times do 
  x1, y1, x2, y2, x3, y3, x4, y4 = STDIN.gets.split().map!{|i| i.to_f}
  puts (y2 - y1)/(x2 - x1) == (y4 - y3)/(x4 - x3) ? "YES" : "NO"
end