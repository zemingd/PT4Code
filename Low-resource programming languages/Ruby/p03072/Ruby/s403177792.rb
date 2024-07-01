n,*a=`dd`.split.map &:to_i
r=1;m=a[0]
(1...n).each{|i|m<=a[i]&&(m=a[i]&&r+=1)}
p r