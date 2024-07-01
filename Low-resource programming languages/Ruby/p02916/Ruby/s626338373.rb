gets
A,B,C=3.times.map{[0]+gets.split.map(&:to_i)}
s=B.sum
s+=A.each_cons(2).map{|l,r|l+1==r ? C[l] : 0}.sum
p s