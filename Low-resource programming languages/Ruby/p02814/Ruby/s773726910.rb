eval"N,M,*A="+`dd`.split*?,
x=1;A.map{|c|x=x.lcm(c)*3[x/M]}
p A.all?{|a|x/a%2>0}?(M+x/2)/x:0