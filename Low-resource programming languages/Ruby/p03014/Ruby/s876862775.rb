d=gets.split(" ").map{|e| e.to_i}
h=d[0]
w=d[1]
arr=[]
memo=[]
h.times{|y|
	t=gets.chomp
	c=0;
	t2=[]
	t.size.times{|x|
		c=t[x]=='#'?0:(c+1)
		t2<<c
	}
	c=0
	t.size.times{|i|
		p1=w-i-1
		if t2[p1]==0
			c=0
		else
			c=[t2[p1],c].max
		end
		t2[p1]=c
	}
	arr<<t
	memo<<t2
}
ans=0
w.times{|x|
	t2=[]
	c=0
	h.times{|y|
		c1=arr[y][x]
		c=c1=='#'?0:(c+1)
		t2<<c
	}
	h.times{|y|
		p1=h-y-1
		c=t2[p1]==0?0:[c,t2[p1]].max
		t2[p1]=c
		ans=[ans,memo[p1][x]+c].max
	}
}
p ans-1