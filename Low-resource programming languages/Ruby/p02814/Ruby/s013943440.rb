eval"N,M,*A="+`dd`.split*?,
x=A.reduce{|c,d|e=c.lcm d;e>M ? 0:e}
p A.all?{|a|x/a%2>0}?(M+x/2)/x:0








