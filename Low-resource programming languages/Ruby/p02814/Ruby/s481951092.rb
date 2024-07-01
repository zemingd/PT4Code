eval"N,M,X,*A="+`dd`.split*?,
A.map{|c|X=X.lcm(c)*3[X/M]}
p A.all?{|a|X/a%2>0}?(M+X/2)/X:0