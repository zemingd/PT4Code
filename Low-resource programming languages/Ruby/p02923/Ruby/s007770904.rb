n,*h=gets(p).split.map &:to_i
m,c,x=0,0,0
h.map{|i|m<i ? c=0: x=[x,c+=1].max;m=i}
p x