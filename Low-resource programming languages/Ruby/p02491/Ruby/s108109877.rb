#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
a,b=rec.map{|t| t.to_i}
def cal(a,b)
   d=a/b
   r=a-b*d
   f=a*1.0/b*1.0
   return "#{d} #{r} #{f}"
end
puts "#{cal(a,b)}"