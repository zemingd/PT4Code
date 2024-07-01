n,*a=`dd`.split.map &:to_i
(1...n).each{|i|a[i]+=a[i-1]}
p (0..n-2).map{|i|(2*a[i]-a[n-1]).abs}.min