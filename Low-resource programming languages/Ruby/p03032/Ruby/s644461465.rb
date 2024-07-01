N,K=gets.split.map &:to_i
V=gets.split.map &:to_i
p 0.upto([N,K].min).map{|n|
  0.upto(n).map{|l|
    r = n - l
    d = [0] + V[0...l] + V[(V.size-r)...V.size]
    d.sort!
    (K-n).times{d.shift if d[0]<0}
    d.inject(:+)
  }.max
}.max