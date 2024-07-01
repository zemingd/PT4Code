#!/usr/local/bin/rubyline=gets
rec=line.split(" ")
x=rec[0].to_i 
y=rec[1].to_i
z=rec[2].to_i

if x>y
  t=x
  x=y
  y=t
end

if y>z
  t=y
  y=z
  z=t
end

if x>y
  t=x
  x=y
  y=t
end

print("#{x} #{y} #{z}")