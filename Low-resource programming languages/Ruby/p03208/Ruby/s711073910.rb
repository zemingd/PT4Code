n,k,*h=gets(p).split.map &:to_i
h.sort!
m=1e9
(0..h.size-k).map{|i|m=[m,h[i+k-1]-h[i]].min}
p m