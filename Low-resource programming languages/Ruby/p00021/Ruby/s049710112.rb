#!/usr/bin/ruby
# -*- coding: utf-8 -*-
=begin
Volume0-0021

Parallelism
=end

def para?(x1,y1,x2,y2,x3,y3,x4,y4)
  if (x1-x2)==0.0 and (x3-x4)==0.0 then
    return true
  elsif (x1-x2)==0.0 or (x3-x4)==0.0 then
    return false
  else
#    return ((y2-y1)/(x2-x1) - (y4-y3)/(x4-x3)).abs <eps
    return (y2-y1)/(x2-x1) == (y4-y3)/(x4-x3)
  end
end

n=STDIN.gets.to_i
0.upto(n-1){|i|
  x1,y1,x2,y2,x3,y3,x4,y4 = STDIN.gets.chomp.split.map{|x| x.to_f}
  puts para?(x1,y1,x2,y2,x3,y3,x4,y4) ? "YES" : "NO"
}