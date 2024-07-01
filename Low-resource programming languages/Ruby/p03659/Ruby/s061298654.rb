n,*a=`dd`.split.map &:to_i
(n-1).times{|i|a[i+1]+=a[i]}
p (0..n-2).map{|i|(2*a[i]-a[n-1]).abs}.min