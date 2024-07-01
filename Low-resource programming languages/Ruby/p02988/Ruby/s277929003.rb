N,*P = `dd`.split.map &:to_i
p (1...N-1).count{ |i| P[i-1] < P[i] && P[i] < P[i+1] || P[i+1] < P[i] && P[i] < P[i-1] }