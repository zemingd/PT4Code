(n,),a=$<.map{|s|s.split.map &:to_i}
d=[0]*(n+1)
e=[0]*(n+1)
d[0]=0
e[0]=-10**10
n.times{|i|
d[i+1]=[d[i]+a[i],e[i]-a[i]].max
e[i+1]=[d[i]-a[i],e[i]+a[i]].max
}
p d.last