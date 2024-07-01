n,*a=`dd`.split.map &:to_i
if a.sort[0]!=1;p -1;exit;end
if a.size==1;p 0;exit;end
ans,a=a.index(1),a[a.index(1)..-1]
(1..n).each{|i|
ans+=a.index(i+1)-a.index(i)-1
break if a.index(i+1)==a.size-1
}
p ans