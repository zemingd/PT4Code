n,*a=`dd`.split.map &:to_i
t=0
a.map!{|e|t+=e}
p (0...n-1).map{|i|(a[-1]-a[i]-a[i]).abs}.min