N,*P = `dd`.split.map &:to_i
M = (1..N).count{ |q| q != P[q-1] }
puts M == 0 || M == 2 ? "YES" : "NO"