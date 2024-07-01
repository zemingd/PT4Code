S,T=*$<;a=0;N=S=~/$/
p T.chop.chars.all?{a+=1.+S[a%N..N].index(_1)||-a%N+x if x=S.index _1}?a:-1