n=gets.to_i
a=gets.to_i
b=gets.to_i
c=gets.to_i
d=gets.to_i
e=gets.to_i
p=[]
p<<a
p<<b
p<<c
p<<d
p<<e
min=p.min
p.sort!
if min==1
  puts n+5
else
  puts n/p[0]+5  
end
