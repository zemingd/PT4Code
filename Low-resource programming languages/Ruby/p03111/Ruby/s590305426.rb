n,a,b,c,*l=`dd`.split.map &:to_i
r=1e9
[*0...4].repeated_permutation(n){|s|
	x=0,0,0
	m=0
	n.times{|i|
		s[i]<3&&(x[s[i]]>0&&m+=10; x[s[i]]+=l[i])
	}
	if x&[0]==[]
		r=[r,m+(x[0]-a).abs+(x[1]-b).abs+(x[2]-c).abs].min
	end
}
p r