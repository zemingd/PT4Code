_,K,*A=`dd`.split.map &:to_i
d=Hash.new(0)
A.map{|i|d[i]+=1}
l=d.to_a.sort{|a,b|a[1]<=>b[1]}
r=0
(d.size-K).times.map{|i|r+=l[i][1]}
p r