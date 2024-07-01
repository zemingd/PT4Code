N, M = gets.split.map &:to_i
Ss = M.times.map{
  k, *s = gets.split.map &:to_i
  s.map(&:pred)
}
P = gets.split.map &:to_i

p (0..2**N).count{|bits|
  Ss.map.with_index(0).all?{|s, i|
    sum = s.map{|z| bits[z] }.inject(:+)
    sum % 2 == P[i]
  }
}