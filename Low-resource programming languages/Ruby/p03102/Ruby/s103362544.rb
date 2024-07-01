N,M,C = gets.split.map &:to_i
B = gets.split.map &:to_i
p (0...N).count{
  a = gets.split.map &:to_i
  (0...M).reduce(C){ |x,i| x + a[i]*B[i] } > 0
}