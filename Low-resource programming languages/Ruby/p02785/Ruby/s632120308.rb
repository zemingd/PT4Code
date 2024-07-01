n,k,*h=`dd`.split.map(&:to_i)
_=h.sort.reverse.drop(k).inject(:+)
p _.nil?? 0:_