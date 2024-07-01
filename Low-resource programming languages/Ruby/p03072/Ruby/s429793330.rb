A=1
((_=`dd`.split.map(&:to_i))[0]-1).times{|i|
A+=1 if _[i+1]>=_[i]}
p A