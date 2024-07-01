eval'N,K,*A='+`dd`.split*?,
l=f=0
42.times{|b|c=A.count{|a|a[b]==1}
l+=K[b]==0?c<<b:[(c<<b)+f-l,N-c<<b].max
f+=[c,N-c].max<<b}
p l