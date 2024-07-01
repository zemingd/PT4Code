s=gets.chop.chars.map &:to_i
a,b,c=0,0,0
s.map{|x|c.odd?? a+=x: b+=x;c+=1}
i=s.size
e=i/2
o=i.odd?? e+1: e
p [e-b+a,o-a+b].min