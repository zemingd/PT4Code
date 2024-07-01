_,k,*h=`dd`.split.map(&:to_i)
k.times{h.pop}
p h.sum