# abc103 A
a, b, c = gets.split.map(&:to_i)
p [a,b,c].sort.each_cons(2).map { |(x,y)|
  (x - y).abs
}.inject(:+)
