args = $stdin.read.split
N, M = *args.map {|i| i.to_i }

def mC2(m)
  m * (m - 1) / 2
end

puts mC2(N) + mC2(M)
