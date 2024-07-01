#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
a,b=rec.map{|t| t.to_i}
d=a/b
r=a-b*d
f=a*1.0/b*1.0
puts "#{d} #{r} #{f}"