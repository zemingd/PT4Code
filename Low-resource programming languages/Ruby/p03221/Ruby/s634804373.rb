_,*a=[*$<].map{|s|s.split.map &:to_i}
h={}
a.map{|i,j|h[i]=(h[i]||[0])<<j}
a.map{|i,j|puts"%06d"*2%[i,h[i].sort!.index(j)]}