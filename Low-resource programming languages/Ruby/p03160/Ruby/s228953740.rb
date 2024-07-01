n,*a=`dd`.split.map &:to_i;k=2
b=[0]
(1...n).each{|i|
	b<<(1..k).map{|j|j>i ? Float::INFINITY : b[i-j]+(a[i]-a[i-j]).abs}.min}
p b[n-1]