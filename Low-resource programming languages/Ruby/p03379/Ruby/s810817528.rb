n,*x=`dd`.split.map &:to_i
a=x.sort
puts x.map{|e| e<a[n/2] ? a[n/2] : a[(n-1)/2]}*$/