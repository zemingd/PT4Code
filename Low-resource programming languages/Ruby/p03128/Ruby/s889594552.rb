eval'N,M,*A='+`dd`.split*?,
d=[0]
N.times{|i|
	A.map{|a|
		d[i]&&d[j=i+[0,2,5,5,4,5,6,3,7,6][a]]=[d[j]||0,d[i]*10+a].max
	}
}
p d[N]
