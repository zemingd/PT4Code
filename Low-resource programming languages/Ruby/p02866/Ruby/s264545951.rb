c=[0]*7e6
gets
d=gets.split.map{|i|c[a=i.to_i]+=1;a}
p c.inject(t=0**(c[0]-1+d[0])){|s,r|(s*t**t=r)%998244353}