N,*H = `dd`.split.map &:to_i
S = [0] + (0...N-1).select{ |i| H[i] < H[i+1] } + [N-1]
p (0...S.size-1).reduce(0){ |a,i| [a, S[i+1]-S[i]-1].max }