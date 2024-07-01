N,K = gets.split.map &:to_i
p (1..N).reduce(0.0){ |a,n|
  next a + 1 if n >= K
  d = Math.log2(K.to_f/n).ceil
  a + (2 ** -d)
} / N