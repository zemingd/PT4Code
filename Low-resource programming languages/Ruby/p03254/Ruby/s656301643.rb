n,x,*a=gets(p).split.map &:to_i
t=0
p a.sort.count{|i|(t+=i)<=x}