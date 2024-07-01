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
min=p.index(p.min)
p.sort!
puts (n/p[0]).ceil+5-min