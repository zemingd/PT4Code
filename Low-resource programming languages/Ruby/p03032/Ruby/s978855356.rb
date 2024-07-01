N,K=gets.split.map &:to_i
V=gets.split.map &:to_i
p 0.upto([N,K].min).map{|l|
  0.upto(l).map{|r|
    d=([0]+V[0...l]+V[(V.size-r)...V.size]).sort
    (K-l-r).times{d.shift if d[0]<0}
    d.inject :+
  }.max
}.max