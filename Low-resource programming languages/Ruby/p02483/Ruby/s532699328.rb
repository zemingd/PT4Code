#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
a=rec[0].to_i 
b=rec[1].to_i
c=rec[2].to_i
t=0


  if((a > b) or (b > c ))
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
 

puts ("#{a} #{b} #{c}")