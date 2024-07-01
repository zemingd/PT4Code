N,M = gets.split.map &:to_i
as = (gets.split.map &:to_i).sort
ch = {}
M.times {
  b,c = gets.split.map &:to_i
  ch[c] = (ch[c] || 0) + b
}

cs = []
ch.keys.sort.reverse_each{ |c|
  b = ch[c]
  cs += [c] * [b, N - cs.size].min
  break if cs.size == N
}

p (0...N).reduce(0){ |a,i|
  a + [as[i], cs[i] || 0].max
}