N,*X = `dd`.split.map &:to_i
p (X.min..X.max).map{ |x0| X.reduce(0){ |s,x| s + (x - x0)**2 } }.min