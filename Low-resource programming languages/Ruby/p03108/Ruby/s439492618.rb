c=*0..n=gets.to_i
x=c.map{|i|[i]}
t,*q=n*~-n/2
[*$<].reverse.map{|s|
	q[0,0]=t
	a,b=s.split.map{|e|c[e.to_i]}
	a,b=b,a if x[a].size>x[b].size
	(t-=x[b].size*x[a].size;x[b]+=x[a].each{|e|c[e]=b})if a!=b
}
p *q