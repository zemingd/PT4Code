c=[0,2,5,5,4,5,6,3,7,6]
eval'N,M,*A='+`dd`.split*?,
d=[0]
0.upto(N){|i|
	A.map{|a|
		if d[i]
			d[i+c[a]]=[d[i+c[a]]||0,d[i]*10+a].max
		end
	}
}
p d[N]
