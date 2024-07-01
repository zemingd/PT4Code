n,x,*a=gets(p).split.map &:to_i
t=0
p a.sort.count{|i|t+=i if t+i<=x}-(x-t!=0?1:0)