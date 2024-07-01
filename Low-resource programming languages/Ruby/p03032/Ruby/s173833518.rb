N,K,*V = `dd`.split.map &:to_i
ans = 0
(0...N).each{ |i|
  (i..N).reverse_each{ |j|
    k = K - (i + N-j)
    break if k < 0
    gems = (V[0...i] + V[j..-1]).sort
    s = gems.inject(0,:+)
    w = gems[0...[gems.size,k].min].reduce(0){ |a,v| a + (v > 0 ? 0 : v) }
    x = s - w
    ans = [ans, x].max
  }
}
p ans
