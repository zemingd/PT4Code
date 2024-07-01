c=[0,2,5,5,4,5,6,3,7,6]
eval'N,M,*A='+`dd`.split*?,
d=[0]
2.upto(N){|i|
	A.map{|a|
		if i>=c[a] && d[i-c[a]]
			d[i]=[d[i]||0,d[i-c[a]]*10+a].max
		end
	}
}
p d[N]
