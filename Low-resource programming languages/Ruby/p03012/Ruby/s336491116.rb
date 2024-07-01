N,*W = `dd`.split.map &:to_i
p (0...N-1).map{ |i|
  (W[0..i].inject(:+) - W[i+1..-1].inject(:+)).abs
}.min