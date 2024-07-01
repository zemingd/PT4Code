#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
a=rec[0].to_i 
b=rec[1].to_i
c=rec[2].to_i
t=0


  while((a <= b) and (b <=c ))
    if a > b
      t = a
      a = b
      b = t
    end
    return a,b,c
    if b > c
      t = b
      b = c 
      c = t
    end
    return a,b,c
  end
  return a,b,c

puts ("#{a} #{b} #{c}")
puts ("#{big(x,y,z)}")