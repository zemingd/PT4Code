N,K,*H=`dd`.split.map &:to_i
d=Array.new(N,0)
(1...N).each{ |i|
  v = d[i-1] + (H[i]-H[i-1]).abs
  ([i-K, 0].max ... i-1).each{ |j| vv = d[j] + (H[i]-H[j]).abs; v = vv if vv < v; }
  d[i] = v
}
p d[-1]
