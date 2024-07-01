N,M,*xs = `dd`.split.map &:to_i
xs.sort!
p (0...M-1).map{ |i| xs[i+1] - xs[i] }.sort[0...[M-N,0].max].reduce(0,:+)

