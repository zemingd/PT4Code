N,*A = `dd`.split.map &:to_i
S = A.group_by{ |s| s }
puts (1..N).map{ |i| (S[i] || []).size  }