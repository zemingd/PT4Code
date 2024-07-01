eval'N,M,*A='+`dd`.split*?,
l=1
A.map!{|a|a/=2}
A.map{|a|
	l=l.lcm(a)
	if l>M
		p 0
		exit
	end
}
x=A.map{|a|
	c=0
	(a/=2;c+=1)while a>0&&a%2==0
	c
}
if x.all?{|y|y==x[0]}
	p M/l-M/(2*l)
else
	p 0
end
