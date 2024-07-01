(n,),h=$<.map{|s|s.split.map &:to_i}
m=h[0]
p h.count{|x|f=m<=x;m=[m,x].max;f}