eval"N,M,*A="+`dd`.split*?,
x=A.reduce{|c,d|c*d>M*2?0:c.lcm(d)}
p A.all?{|a|x/a%2>0}?(M+x/2)/x:0