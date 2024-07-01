n,k,*d=gets(p).split.map &:to_i
d.each_slice(2).sort.map{|a,b|k-=b;(p a;break) if k<=0}