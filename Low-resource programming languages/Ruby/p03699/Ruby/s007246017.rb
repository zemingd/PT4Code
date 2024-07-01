n,*a=$<.map &:to_i
d=a.select{|e|e%10>0}
s=a.inject :+
p s%10>0 ? s : d[0] ? s-d.min : 0