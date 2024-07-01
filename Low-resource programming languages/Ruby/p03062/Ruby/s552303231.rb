n,*_=`dd`.split.map(&:to_i)
m=_.select{|i|i<0}.size.odd?
_.map!(&:abs).sort!
if m
  p _[1,n].inject(:+)-_[0]
else
  p _.inject(:+)
end