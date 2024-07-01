#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
x=rec[0].to_i 
y=rec[1].to_i
z=rec[2].to_i
t = 0
s = 0
def big(a,b,c)
  if((a > b) or (b > c )) then
    if a > b
      t = "#{a}"
      a = "#{b}"
      b = "#{t}"
    end
  
    if b > c
      s = "#{b}"
      b = "#{c}" 
      c = "#{s}"
    end
  end
end
 
puts "#{big(x,y,z)}"