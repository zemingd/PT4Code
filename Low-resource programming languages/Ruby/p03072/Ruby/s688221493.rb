n,*h=gets(p).split
c,t=0,0
h.map{|x|c+=1 and t=x.to_i if t<=x}
p c