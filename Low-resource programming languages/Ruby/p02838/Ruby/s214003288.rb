m=1000000007
gets
a=gets.split.map(&:to_i)
p (0..60).map{|i|
  b=a.map{|t|t[i]}
  b.count(0)*b.count(1)*2**i%m
}.inject(:+)%m