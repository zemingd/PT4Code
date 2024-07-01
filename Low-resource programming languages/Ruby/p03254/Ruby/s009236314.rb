n,x,*a=gets(p).split.map &:to_i
c=0
a.sort.map{|i|
  x-=i
  c+=1 if x>=0
}
p c-(x>0?1:0)