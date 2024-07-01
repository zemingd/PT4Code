#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
x=rec[0].to_i 
y=rec[1].to_i
z=rec[2].to_i
t = 0

def big(x,y,z)
  if((a > b) or (b > c )) then
    if a > b
      t = a
      a = b
      b = t
    end
  
    if b > c
      t = b
      b = c 
      c = t
    end
  end
end
 
puts ("#{big(x,y,z)}")