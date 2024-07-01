#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
x=rec[0].to_i 
y=rec[1].to_i
z=rec[2].to_i

def big(a,b,c)
  if a > b
    t = a
    a = b
    b = t
  end
  
  if b > c
    s = b
    b = c 
    c = s
  end
  
  if a > b
    t = a
    a = b
    b = t
  end
return "#{a} #{b} #{c}"
end
 
puts "#{big(x,y,z)}"