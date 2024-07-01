n,*a=`dd`.split.map &:to_i
(1...n).each{|i|a[i]+=a[i-1]}
p (0..n-2).map{|i|(a[i]-(a[n-1]-a[i])).abs}.min