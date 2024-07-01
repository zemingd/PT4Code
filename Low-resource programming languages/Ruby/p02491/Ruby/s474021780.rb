#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
x=rec[0].to_i
y=rec[1].to_i

def cal(a,b)
   d=a/b
   r=a*1.0-b*d*1.0
   f=(1.0*a)/(1.0*b)
   return "#{d} #{r} #{f}"
end
puts "#{cal(x,y)}"