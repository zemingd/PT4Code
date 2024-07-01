eval"N,M,*A="+`dd`.split*?,
x=A.reduce :lcm
p A.all?{|a|x/a%2>0}?(M+x/2)/x:0