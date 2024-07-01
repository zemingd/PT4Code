n,x,a=`dd`.split.map &:to_i
a.sort!
a.map!{|e| t=e<=x ? e : x; e-t}
res=a.count(0)
res-=1 if x>0
p res