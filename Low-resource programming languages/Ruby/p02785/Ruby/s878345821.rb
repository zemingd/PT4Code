_,k,*h=`dd`.split.map(&:to_i)
h.sort!
k.times{h.pop}
p h.sum
