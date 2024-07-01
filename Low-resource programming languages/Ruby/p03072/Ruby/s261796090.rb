n,m,*a=`dd`.split.map &:to_i
r=1
(1...n).each{|i|m<=a[i]&&(m=a[i];r+=1)}
p r