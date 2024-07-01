d=1,*[0]*12
gets.chop.chars{|c|
	e=[0]*13
	(c[??]?[*0..9]:[c.to_i]).map{|k|
		13.times{|j|
			e[(j*10+k)%13]+=d[j]
		}
	}
	d=e.map{|e|e%=10**9+7}
}
p d[5]
