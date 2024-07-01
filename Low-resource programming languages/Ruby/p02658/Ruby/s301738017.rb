M=10**18
n,*as=$<.read.split.map &:to_i
puts as.sort.reduce(1){|s,e| s*=e; break -1 if s>M; s }