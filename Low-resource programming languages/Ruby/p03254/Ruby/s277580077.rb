n,x,*a=gets(p).split.map &:to_i
c,t=0,0
a.sort.map{|i|
  t+=i
  c+=1 if t<=x
  c-=1 if x-t>0 and x-t<i
}
p c