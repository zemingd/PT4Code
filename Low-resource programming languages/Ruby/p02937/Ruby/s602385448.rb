S=gets.chop
a=0
gets.chop.chars{|c|
	b=a%S.size
	x=S.index c
	y=S[b..-1].index c
	a+=x ? y ? y+1 : x+S.size-b : p(-1)+exit
}
p a