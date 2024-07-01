#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
y=rec[0].to_i
z=rec[1].to_i
def cal(a,b)
   d=a/b
   r=a-b*d
   f=a*1.0/b*1.0
   return "#{d} #{r} #{f}"
end
puts "#{cal(x,y)}"