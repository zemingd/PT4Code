n,c,*x=`dd`.split.map &:to_i
(1...n).each{|i|x[i]+=x[i-1]}
r=[]
n.times{|k|t=5*x[-1]+(k+n)*c;o=n-k*2-1;(t+=2*x[o];o-=k)while o>=0;r<<t}
p r.min