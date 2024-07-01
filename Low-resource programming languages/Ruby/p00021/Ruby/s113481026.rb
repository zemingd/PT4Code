#!/usr/bin/ruby
# -*- coding: utf-8 -*-
=begin
Volume0-0021
=end

def para?(x1,y1,x2,y2,x3,y3,x4,y4)
  if x1==x2 and x3==x4 then
    return true
  elsif (x1==x2 and x3!=x4) or (x1!=x2 and x3==x4) then
    return false
  else
    return (y2-y1) / (x2-x1) == (y4-y3) / (x4-x3)
  end
end

n=STDIN.gets.to_i
while STDIN.gets do
  x1,y1,x2,y2,x3,y3,x4,y4 = $_.chomp.split.map{|x| x.to_f}
  puts para?(x1,y1,x2,y2,x3,y3,x4,y4) ? "YES" : "NO"
end